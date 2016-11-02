//
//  CGGeometryExtensions.swift
//  Panda
//
//  Created by Javier on 10/17/15.
//  Copyright © 2015 Javier. All rights reserved.
//

import CoreGraphics

public func +<V: Vector>(lhs: V, rhs: V) -> V {
    return V(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
}

public func -<V: Vector>(lhs: V, rhs: V) -> V {
    return V(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
}

public func *<V: Vector>(lhs: CGFloat, rhs: V) -> V {
    return V(x: lhs * rhs.x, y: lhs * rhs.y)
}

public func *<V: Vector>(lhs: V, rhs: CGFloat) -> V {
    return rhs * lhs
}

public func /<V: Vector>(lhs: V, rhs: CGFloat) -> V {
    return 1 / rhs * lhs
}

public func +=<V: Vector>(lhs: inout V, rhs: V) {
    lhs = lhs + rhs
}

public func -=<V: Vector>(lhs: inout V, rhs: V) {
    lhs = lhs - rhs
}

public func *=<V: Vector>(lhs: inout V, rhs: CGFloat) {
    lhs = lhs * rhs
}

public func /=<V: Vector>(lhs: inout V, rhs: CGFloat) {
    lhs = lhs / rhs
}

public protocol Vector {
    var x: CGFloat { get }
    var y: CGFloat { get }
    init(x: CGFloat, y: CGFloat)
}

extension CGPoint: Vector {}

extension CGSize: Vector {
    public var x: CGFloat { return width }
    public var y: CGFloat { return height }

    public init(x: CGFloat, y: CGFloat) {
        width = x
        height = y
    }
}

extension CGPoint {
    public init(_ value: CGFloat) {
        self.init(x: value, y: value)
    }
}

extension CGSize {
    public init(_ value: CGFloat) {
        self.init(width: value, height: value)
    }
}

extension CGRect {
    public var midPoint: CGPoint { return CGPoint(x: midX, y: midY) }

    public init(size: CGSize) {
        self.init(origin: .zero, size: size)
    }

    public func inset(by insets: UIEdgeInsets) -> CGRect {
        return UIEdgeInsetsInsetRect(self, insets)
    }
}
