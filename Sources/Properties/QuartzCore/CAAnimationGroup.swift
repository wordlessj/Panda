//
//  CAAnimationGroup.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import QuartzCore

extension PandaChain where Object: CAAnimationGroup {
    @discardableResult
    public func animations(_ value: [CAAnimationConvertible]?) -> PandaChain {
        object.animations = unboxArray(value)
        return self
    }
}
