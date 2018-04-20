//
//  Layer.swift
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
    public func anchorPoint(_ value: CGPoint) -> Self {
        return addAttributes(key: "anchorPoint", value: value) {
            $0.layer.anchorPoint = value
        }
    }

    @discardableResult
    public func anchorPointZ(_ value: CGFloat) -> Self {
        return addAttributes(key: "anchorPointZ", value: value) {
            $0.layer.anchorPointZ = value
        }
    }

    @discardableResult
    public func border(width: CGFloat, color: UIColor?) -> Self {
        return addAttributes(key: "borderWidth", value: width) {
            $0.layer.borderWidth = width
        }.addAttributes(key: "borderColor", value: color) {
            $0.layer.borderColor = color?.cgColor
        }
    }

    @discardableResult
    public func cornerRadius(_ value: CGFloat) -> Self {
        return addAttributes(key: "cornerRadius", value: value) {
            $0.layer.cornerRadius = value
        }
    }

    /// `drawsAsynchronously`
    @discardableResult
    public func drawsAsync(_ value: Bool) -> Self {
        return addAttributes(key: "drawsAsynchronously", value: value) {
            $0.layer.drawsAsynchronously = value
        }
    }

    @available(*, deprecated, renamed: "drawsAsync()")
    @discardableResult
    public func drawsAsynchronously(_ value: Bool) -> Self {
        return drawsAsync(value)
    }

    @discardableResult
    public func rasterizationScale(_ value: CGFloat) -> Self {
        return addAttributes(key: "rasterizationScale", value: value) {
            $0.layer.rasterizationScale = value
        }
    }

    /// `shouldRasterize`
    @discardableResult
    public func rasterized(_ value: Bool) -> Self {
        return addAttributes(key: "shouldRasterize", value: value) {
            $0.layer.shouldRasterize = value
        }
    }

    @available(*, deprecated, renamed: "rasterized()")
    @discardableResult
    public func shouldRasterize(_ value: Bool) -> Self {
        return rasterized(value)
    }

    @discardableResult
    public func shadow(
        opacity: CGFloat,
        radius: CGFloat,
        offset: CGSize,
        color: UIColor? = nil,
        path: CGPath? = nil
    ) -> Self {
        return addAttributes(key: "shadowOpacity", value: opacity) {
            $0.layer.shadowOpacity = Float(opacity)
        }.addAttributes(key: "shadowRadius", value: radius) {
            $0.layer.shadowRadius = radius
        }.addAttributes(key: "shadowOffset", value: offset) {
            $0.layer.shadowOffset = offset
        }.addAttributes(key: "shadowColor", value: color) {
            $0.layer.shadowColor = color?.cgColor
        }.addAttributes(key: "shadowPath", value: path) {
            $0.layer.shadowPath = path
        }
    }

    @discardableResult
    public func transform3D(_ value: CATransform3D) -> Self {
        return addAttributes(key: "transform3D", value: value) {
            $0.layer.transform = value
        }
    }
}
