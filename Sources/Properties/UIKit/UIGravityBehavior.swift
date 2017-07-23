//
//  UIGravityBehavior.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIGravityBehavior {
    @discardableResult
    public func gravityDirection(_ value: CGVector) -> PandaChain {
        object.gravityDirection = value
        return self
    }

    @discardableResult
    public func angle(_ value: CGFloat) -> PandaChain {
        object.angle = value
        return self
    }

    @discardableResult
    public func magnitude(_ value: CGFloat) -> PandaChain {
        object.magnitude = value
        return self
    }

    @discardableResult
    public func angle(_ angle: CGFloat, magnitude: CGFloat) -> PandaChain {
        object.setAngle(angle, magnitude: magnitude)
        return self
    }
}
