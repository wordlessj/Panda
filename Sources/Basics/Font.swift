//
//  Font.swift
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

public protocol FontContainer: class {
    var containedFont: UIFont? { get set }
}

extension PandaChain where Object: FontContainer {
    @discardableResult
    public func font(_ value: UIFont?) -> PandaChain {
        object.containedFont = value
        return self
    }

    @discardableResult
    public func font(style: UIFontTextStyle) -> PandaChain {
        return font(.preferredFont(forTextStyle: style))
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func font(style: UIFontTextStyle, compatibleWith traitCollection: UITraitCollection?) -> PandaChain {
        return font(.preferredFont(forTextStyle: style, compatibleWith: traitCollection))
    }

    @discardableResult
    public func font(size: CGFloat) -> PandaChain {
        return font(.systemFont(ofSize: size))
    }

    @available(iOS 8.2, *)
    @discardableResult
    public func font(size: CGFloat, weight: UIFontWeight) -> PandaChain {
        return font(.systemFont(ofSize: size, weight: weight))
    }

    @discardableResult
    public func font(boldSize size: CGFloat) -> PandaChain {
        return font(.boldSystemFont(ofSize: size))
    }

    @discardableResult
    public func font(italicSize size: CGFloat) -> PandaChain {
        return font(.italicSystemFont(ofSize: size))
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func font(monospacedDigitSize size: CGFloat, weight: UIFontWeight) -> PandaChain {
        return font(.monospacedDigitSystemFont(ofSize: size, weight: weight))
    }
}

extension UIButton: FontContainer {
    public var containedFont: UIFont? {
        get { return titleLabel?.font }
        set { titleLabel?.font = newValue }
    }
}

extension UILabel: FontContainer {
    public var containedFont: UIFont? {
        get { return font }
        set { font = newValue }
    }
}

extension UISimpleTextPrintFormatter: FontContainer {
    public var containedFont: UIFont? {
        get { return font }
        set { font = newValue }
    }
}

extension UITextField: FontContainer {
    public var containedFont: UIFont? {
        get { return font }
        set { font = newValue }
    }
}

extension UITextView: FontContainer {
    public var containedFont: UIFont? {
        get { return font }
        set { font = newValue }
    }
}
