//
//  ListView.swift
//  TodoSample
//
//  Copyright (c) 2018 Javier Zhang (https://wordlessj.github.io/)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation
import Panda

private class ListItemView: RenderView, Component {
    struct Props: PropsProtocol {
        var todo = Todo()
        var changed: ((String) -> ())?
        var toggled: (() -> ())?
        var deleted: (() -> ())?
    }

    struct State: StateProtocol {}

    private let checkStyle = UIButton.style
        .paddingHorizontal(8)

    private let textStyle = UITextField.style
        .flexGrow(1)
        .marginLeft(12)

    private let deleteStyle = UIButton.style
        .marginRight(8)
        .width(44)
        .font(size: 30, weight: .light)
        .title("×")
        .titleColor(#colorLiteral(red: 0.8, green: 0.6039215686, blue: 0.6039215686, alpha: 1))

    func render() -> ElementProtocol {
        return UIView.el.flexDirection(.row).backgroundColor(.white).subviews {
            UIButton.el
                .style(checkStyle)
                .image(props.todo.completed ? #imageLiteral(resourceName: "checked") : #imageLiteral(resourceName: "check"))
                .touchUpInside { [unowned self] _ in
                    self.props.toggled?()
                }
            UITextField.el
                .style(textStyle)
                .defaultTextAttributes(textAttributes())
                .text(props.todo.text)
                .delegate(self)
            UIButton.el
                .style(deleteStyle)
                .touchUpInside { [unowned self] _ in
                    self.props.deleted?()
                }
            UIView.el.style(Style.bottomLine)
        }
    }

    private func textAttributes() -> [String: Any] {
        return [
            NSAttributedStringKey.font.rawValue:
                UIFont.systemFont(ofSize: 24, weight: .light),
            NSAttributedStringKey.foregroundColor.rawValue:
                props.todo.completed ? #colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 1) : #colorLiteral(red: 0.3019607843, green: 0.3019607843, blue: 0.3019607843, alpha: 1),
            NSAttributedStringKey.strikethroughStyle.rawValue:
                props.todo.completed ? NSUnderlineStyle.styleSingle.rawValue : NSUnderlineStyle.styleNone.rawValue,
        ]
    }
}

extension ListItemView: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let text = textField.text ?? ""

        if text.isEmpty {
            props.deleted?()
        } else {
            props.changed?(text)
        }

        return true
    }
}

class ListView: RenderView, Component {
    struct Props: PropsProtocol {
        var todos = [Todo]()
        var changed: ((Int, String) -> ())?
        var toggled: ((Int) -> ())?
        var deleted: ((Int) -> ())?
    }

    struct State: StateProtocol {
        var width: CGFloat = 0
    }

    private let collectionStyle = DataCollectionView.style
        .flexGrow(1)
        .backgroundColor(nil)
        .layoutMinimumLineSpacing(0)

    func render() -> ElementProtocol {
        return UIView.el.subviews {
            DataCollectionView.el
                .style(collectionStyle)
                .data(props.todos)
                .renderItem(weakSelf(ListView.renderItem))
                .layoutItemSize(CGSize(width: state.width, height: 60))
        }
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        state.width = bounds.width
    }

    private func renderItem(_ item: Any, index: Int) -> ElementProtocol {
        let todo = item as! Todo

        return UIView.el.subviews {
            ListItemView.el
                .flexGrow(1)
                .props(\.todo, todo)
                .props(\.changed, { [unowned self] text in
                    self.props.changed?(index, text)
                })
                .props(\.toggled, { [unowned self] in
                    self.props.toggled?(index)
                })
                .props(\.deleted, { [unowned self] in
                    self.props.deleted?(index)
                })
        }
    }
}
