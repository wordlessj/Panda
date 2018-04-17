//
//  UIViewExtensions.swift
//  Panda
//
//  Copyright (c) 2017 Javier Zhang (https://wordlessj.github.io/)
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
        ElementStack.shared.push()
        value()
        let elements = ElementStack.shared.pop()
        return subviews(elements)
    }
}

extension PandaChain where Object: UIView {
    @discardableResult
    public func border(width: CGFloat, color: UIColor?) -> PandaChain {
        object.layer.pd.border(width: width, color: color?.cgColor)
        return self
    }

    /// Set corner radius. Also set `clipsToBounds` to `true` to enable corner radius.
    @discardableResult
    public func cornerRadius(_ value: CGFloat) -> PandaChain {
        object.layer.pd.cornerRadius(value).masks(true)
        return self
    }

    /// Set rasterized. Also set `rasterizationScale` to screen's scale.
    @discardableResult
    public func rasterized(_ value: Bool) -> PandaChain {
        object.layer.pd.rasterized(value).rasterizationScale(UIScreen.main.scale)
        return self
    }

    @discardableResult
    public func shadow(opacity: CGFloat,
                       radius: CGFloat,
                       offset: CGSize,
                       color: UIColor? = nil,
                       path: CGPath? = nil) -> PandaChain {
        object.layer.pd.shadow(opacity: opacity, radius: radius, offset: offset, color: color?.cgColor, path: path)
        return self
    }
}
