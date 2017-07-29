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

extension PandaChain where Object: UIView {
    /// Animate `layoutIfNeeded()`, suitable for constraints change.
    @discardableResult
    public func animateLayout(duration: TimeInterval,
                              delay: TimeInterval = 0,
                              options: UIViewAnimationOptions = [],
                              completion: ((Bool) -> ())? = nil) -> PandaChain {
        UIView.animate(withDuration: duration,
                       delay: delay,
                       options: options,
                       animations: { self.object.layoutIfNeeded() },
                       completion: completion)
        return self
    }

    /// Animate `layoutIfNeeded()` using spring, suitable for constraints change.
    @discardableResult
    public func springAnimateLayout(duration: TimeInterval,
                                    delay: TimeInterval = 0,
                                    damping: CGFloat = 1,
                                    initialVelocity: CGFloat = 0,
                                    options: UIViewAnimationOptions = [],
                                    completion: ((Bool) -> ())? = nil) -> PandaChain {
        UIView.animate(withDuration: duration,
                       delay: delay,
                       usingSpringWithDamping: damping,
                       initialSpringVelocity: initialVelocity,
                       options: options,
                       animations: { self.object.layoutIfNeeded() },
                       completion: completion)
        return self
    }
}

extension PandaChain where Object: UIView {
    @discardableResult
    public func cornerRadius(_ value: CGFloat) -> PandaChain {
        object.layer.pd.cornerRadius(value)
        return self
    }

    @discardableResult
    public func border(width: CGFloat, color: UIColor?) -> PandaChain {
        object.layer.pd.border(width: width, color: color?.cgColor)
        return self
    }

    @discardableResult
    public func shadow(opacity: CGFloat,
                       radius: CGFloat,
                       offset: CGSize,
                       color: UIColor?,
                       path: CGPath? = nil) -> PandaChain {
        object.layer.pd.shadow(opacity: opacity, radius: radius, offset: offset, color: color?.cgColor, path: path)
        return self
    }
}
