//
//  UIBezierPath.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

public protocol UIBezierPathConvertible {}

extension UIBezierPath: UIBezierPathConvertible {}
extension PandaChain: UIBezierPathConvertible {}

extension PandaChain where Object: UIBezierPath {
    @discardableResult
    public func cgPath(_ value: CGPath) -> PandaChain {
        object.cgPath = value
        return self
    }

    @discardableResult
    public func lineWidth(_ value: CGFloat) -> PandaChain {
        object.lineWidth = value
        return self
    }

    @discardableResult
    public func lineCapStyle(_ value: CGLineCap) -> PandaChain {
        object.lineCapStyle = value
        return self
    }

    @discardableResult
    public func lineJoinStyle(_ value: CGLineJoin) -> PandaChain {
        object.lineJoinStyle = value
        return self
    }

    @discardableResult
    public func miterLimit(_ value: CGFloat) -> PandaChain {
        object.miterLimit = value
        return self
    }

    @discardableResult
    public func flatness(_ value: CGFloat) -> PandaChain {
        object.flatness = value
        return self
    }

    @discardableResult
    public func usesEvenOddFillRule(_ value: Bool) -> PandaChain {
        object.usesEvenOddFillRule = value
        return self
    }

    @discardableResult
    public func lineDash(_ pattern: UnsafePointer<CGFloat>?, count: Int, phase: CGFloat) -> PandaChain {
        object.setLineDash(pattern, count: count, phase: phase)
        return self
    }
}
