//
//  UIButtonExtensions.swift
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

extension PandaChain where Object: UIButton {
    @discardableResult
    public func title(_ title: String?, for state: UIControlState = .normal) -> PandaChain {
        object.setTitle(title, for: state)
        return self
    }

    @discardableResult
    public func attributedTitle(_ title: NSAttributedString?, for state: UIControlState = .normal) -> PandaChain {
        object.setAttributedTitle(title, for: state)
        return self
    }

    @discardableResult
    public func titleColor(_ color: UIColor?, for state: UIControlState = .normal) -> PandaChain {
        object.setTitleColor(color, for: state)
        return self
    }

    @discardableResult
    public func titleShadowColor(_ color: UIColor?, for state: UIControlState = .normal) -> PandaChain {
        object.setTitleShadowColor(color, for: state)
        return self
    }

    @discardableResult
    public func backgroundImage(_ image: UIImage?, for state: UIControlState = .normal) -> PandaChain {
        object.setBackgroundImage(image, for: state)
        return self
    }

    @discardableResult
    public func image(_ image: UIImage?, for state: UIControlState = .normal) -> PandaChain {
        object.setImage(image, for: state)
        return self
    }
}
