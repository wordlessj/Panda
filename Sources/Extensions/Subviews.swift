//
//  Subviews.swift
//  Panda
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

extension Element where Object: UIView {
    @discardableResult
    public func subviews(_ value: [ElementProtocol]) -> Self {
        return addChildren(key: "subviews", children: Children<Object>(
            elements: value,
            child: { parent, index in parent.subviews[index] },
            insert: { parent, child, index in parent.insertSubview(child as! UIView, at: index) },
            remove: { parent, index in parent.subviews[index].removeFromSuperview() }
        ))
    }

    @discardableResult
    public func subviews(_ value: () -> ()) -> Self {
        return subviews(elements(from: value))
    }
}

extension Element where Object: UIStackView {
    @discardableResult
    public func arrangedSubviews(_ value: [ElementProtocol]) -> Self {
        return addChildren(key: "arrangedSubviews", children: Children<Object>(
            elements: value,
            child: { parent, index in parent.arrangedSubviews[index] },
            insert: { parent, child, index in parent.insertArrangedSubview(child as! UIView, at: index) },
            remove: { parent, index in parent.removeArrangedSubview(parent.arrangedSubviews[index]) }
        ))
    }

    @discardableResult
    public func arrangedSubviews(_ value: () -> ()) -> Self {
        return arrangedSubviews(elements(from: value))
    }
}
