//
//  Transform.swift
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

private func radianFromDegree(_ degree: CGFloat) -> CGFloat {
    return degree / 180 * CGFloat.pi
}

extension Element where Object: UIView {
    /// Set `transform` with rotation in radians.
    @discardableResult
    public func rotation(radian: CGFloat) -> Self {
        return transform(CGAffineTransform(rotationAngle: radian))
    }

    /// Set `transform` with rotation in degrees.
    @discardableResult
    public func rotation(degree: CGFloat) -> Self {
        return rotation(radian: radianFromDegree(degree))
    }

    /// Set `transform` with scale.
    @discardableResult
    public func scale(x: CGFloat, y: CGFloat) -> Self {
        return transform(CGAffineTransform(scaleX: x, y: y))
    }

    /// Set `transform` with scale.
    @discardableResult
    public func scale(_ value: CGFloat) -> Self {
        return scale(x: value, y: value)
    }

    /// Set `transform` with translation.
    @discardableResult
    public func translation(x: CGFloat, y: CGFloat) -> Self {
        return transform(CGAffineTransform(translationX: x, y: y))
    }
}
