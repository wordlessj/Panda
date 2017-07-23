//
//  UIPushBehavior.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIPushBehavior {
    @discardableResult
    public func active(_ value: Bool) -> PandaChain {
        object.active = value
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
    public func pushDirection(_ value: CGVector) -> PandaChain {
        object.pushDirection = value
        return self
    }

    @discardableResult
    public func targetOffsetFromCenter(_ o: UIOffset, for item: UIDynamicItem) -> PandaChain {
        object.setTargetOffsetFromCenter(o, for: item)
        return self
    }

    @discardableResult
    public func angle(_ angle: CGFloat, magnitude: CGFloat) -> PandaChain {
        object.setAngle(angle, magnitude: magnitude)
        return self
    }
}
