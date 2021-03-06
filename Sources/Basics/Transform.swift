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

public protocol TransformContainer: class {
    var transform: CGAffineTransform { get set }
}

extension PandaChain where Object: TransformContainer {
    /// Set `transform` with rotation in radians.
    @discardableResult
    public func rotation(radian: CGFloat) -> PandaChain {
        object.transform = CGAffineTransform(rotationAngle: radian)
        return self
    }

    /// Set `transform` with rotation in degrees.
    @discardableResult
    public func rotation(degree: CGFloat) -> PandaChain {
        return rotation(radian: radianFromDegree(degree))
    }

    /// Set `transform` with scale.
    @discardableResult
    public func scale(x: CGFloat, y: CGFloat) -> PandaChain {
        object.transform = CGAffineTransform(scaleX: x, y: y)
        return self
    }

    /// Set `transform` with scale.
    @discardableResult
    public func scale(_ value: CGFloat) -> PandaChain {
        return scale(x: value, y: value)
    }

    /// Set `transform` with translation.
    @discardableResult
    public func translation(x: CGFloat, y: CGFloat) -> PandaChain {
        object.transform = CGAffineTransform(translationX: x, y: y)
        return self
    }

    /// Concatenate `transform` with rotation in radians.
    @discardableResult
    public func concatRotation(radian: CGFloat) -> PandaChain {
        object.transform = object.transform.concatenating(CGAffineTransform(rotationAngle: radian))
        return self
    }

    /// Concatenate `transform` with rotation in degrees.
    @discardableResult
    public func concatRotation(degree: CGFloat) -> PandaChain {
        return concatRotation(radian: radianFromDegree(degree))
    }

    /// Concatenate `transform` with scale.
    @discardableResult
    public func concatScale(x: CGFloat, y: CGFloat) -> PandaChain {
        object.transform = object.transform.concatenating(CGAffineTransform(scaleX: x, y: y))
        return self
    }

    /// Concatenate `transform` with scale.
    @discardableResult
    public func concatScale(_ value: CGFloat) -> PandaChain {
        return concatScale(x: value, y: value)
    }

    /// Concatenate `transform` with translation.
    @discardableResult
    public func concatTranslation(x: CGFloat, y: CGFloat) -> PandaChain {
        object.transform = object.transform.concatenating(CGAffineTransform(translationX: x, y: y))
        return self
    }
}

extension UICollectionViewLayoutAttributes: TransformContainer {}
extension UIView: TransformContainer {}
