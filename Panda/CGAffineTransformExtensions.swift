//
//  CGAffineTransformExtensions.swift
//  Panda
//
//  Created by Javier on 9/9/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import CoreGraphics

extension CGFloat {
    fileprivate var angleRadian: CGFloat { return self / 180 * CGFloat.pi }
}

extension CGAffineTransform {
    public var scale: CGPoint {
        get { return CGPoint(x: a, y: d) }
        set { (a, d) = (newValue.x, newValue.y) }
    }

    public var translation: CGPoint {
        get { return CGPoint(x: tx, y: ty) }
        set { (tx, ty) = (newValue.x, newValue.y) }
    }

    public init(rotationDegree degree: CGFloat) {
        self.init(rotationAngle: degree.angleRadian)
    }

    public init(scale: CGFloat) {
        self.init(scaleX: scale, y: scale)
    }

    public func rotated(byDegree degree: CGFloat) -> CGAffineTransform {
        return rotated(by: degree.angleRadian)
    }

    public func scaled(by scale: CGFloat) -> CGAffineTransform {
        return scaledBy(x: scale, y: scale)
    }
}
