//
//  BottomBar.swift
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

class BottomBar: RenderView, Component {
    struct Props: PropsProtocol {
        var count = 0
        var showsClear = false
        var cleared: (() -> ())?
    }

    struct State: StateProtocol {}

    private let wrapperStyle = UIView.style
        .flexDirection(.row)
        .justifyContent(.spaceBetween)
        .paddingHorizontal(15)

    private let countStyle = UILabel.style
        .font(size: 14, weight: .light)
        .textColor(#colorLiteral(red: 0.4666666667, green: 0.4666666667, blue: 0.4666666667, alpha: 1))

    private let clearStyle = UIButton.style
        .font(size: 14, weight: .light)
        .titleColor(#colorLiteral(red: 0.4666666667, green: 0.4666666667, blue: 0.4666666667, alpha: 1))
        .title("Clear completed")

    func render() -> ElementProtocol {
        return UIView.el.style(wrapperStyle).subviews {
            UIView.el.style(Style.topLine)
            UILabel.el
                .style(countStyle)
                .text(countText())
            UIButton.el
                .style(clearStyle)
                .hidden(!props.showsClear)
                .touchUpInside { [unowned self] _ in
                    self.props.cleared?()
                }
        }
    }

    private func countText() -> String {
        switch props.count {
        case 0: return "No items left"
        case 1: return "1 item left"
        default: return "\(props.count) items left"
        }
    }
}
