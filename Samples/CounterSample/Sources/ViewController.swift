//
//  ViewController.swift
//  CounterSample
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

import UIKit
import Panda

class ViewController: RenderViewController, Component {
    struct Props: PropsProtocol {}

    struct State: StateProtocol {
        var count = 0
    }

    private let labelStyle = UILabel.style
        .font(monospacedDigitSize: 200, weight: .ultraLight)
        .align(.center)

    private let buttonStyle = UIButton.style
        .font(size: 100, weight: .ultraLight)
        .titleColor(.black)

    func render() -> ElementProtocol {
        return UIView.el.justifyContent(.center).subviews {
            UILabel.el
                .style(labelStyle)
                .text("\(state.count)")
            UIView.el.flexDirection(.row).justifyContent(.spaceEvenly).subviews {
                UIButton.el
                    .style(buttonStyle)
                    .title("-")
                    .touchUpInside(weakSelf(ViewController.decrement))
                UIButton.el
                    .style(buttonStyle)
                    .title("+")
                    .touchUpInside(weakSelf(ViewController.increment))
            }
        }
    }

    private func increment(_: UIButton) {
        state.count += 1
    }

    private func decrement(_: UIButton) {
        state.count -= 1
    }
}
