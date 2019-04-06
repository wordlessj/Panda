//
//  CAAnimation.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import QuartzCore

public protocol CAAnimationConvertible {}

extension CAAnimation: CAAnimationConvertible {}
extension PandaChain: CAAnimationConvertible {}

extension PandaChain where Object: CAAnimation {
    @discardableResult
    public func timingFunction(_ value: CAMediaTimingFunction?) -> PandaChain {
        object.timingFunction = value
        return self
    }

    @discardableResult
    public func delegate(_ value: CAAnimationDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func isRemovedOnCompletion(_ value: Bool) -> PandaChain {
        object.isRemovedOnCompletion = value
        return self
    }
}
