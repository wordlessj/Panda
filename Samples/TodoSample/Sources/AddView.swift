//
//  AddView.swift
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

class AddView: RenderView, Component {
    struct Props: PropsProtocol {
        var showsToggle = false
        var isToggleDark = false
        var added: ((String) -> ())?
        var toggled: (() -> ())?
    }

    struct State: StateProtocol {}

    private let toggleStyle = UIButton.style
        .width(44)
        .font(size: 22, weight: .light)
        .title("▿")

    private let textStyle = UITextField.style
        .flexGrow(1)
        .marginLeft(16)
        .marginRight(16)
        .font(size: 24, weight: .light)
        .textColor(#colorLiteral(red: 0.3019607843, green: 0.3019607843, blue: 0.3019607843, alpha: 1))
        .placeholder("What needs to be done?")

    func render() -> ElementProtocol {
        return UIView.el.flexDirection(.row).subviews {
            UIButton.el
                .style(toggleStyle)
                .hidden(!props.showsToggle)
                .titleColor(props.isToggleDark ? #colorLiteral(red: 0.4509803922, green: 0.4509803922, blue: 0.4509803922, alpha: 1) : #colorLiteral(red: 0.9019607843, green: 0.9019607843, blue: 0.9019607843, alpha: 1))
                .touchUpInside { [unowned self] _ in
                    self.props.toggled?()
                }
            UITextField.el
                .style(textStyle)
                .delegate(self)
            UIView.el.style(Style.bottomLine)
        }
    }
}

extension AddView: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let text = textField.text ?? ""

        if !text.isEmpty {
            props.added?(text)
        }

        textField.text = nil
        textField.resignFirstResponder()
        return true
    }
}
