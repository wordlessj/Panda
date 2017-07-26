//
//  CAAnimation.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import QuartzCore

extension PandaChain where Object: CAAnimation {
    /// `timingFunction`
    @discardableResult
    public func timing(_ value: CAMediaTimingFunction?) -> PandaChain {
        object.timingFunction = value
        return self
    }

    @available(*, deprecated, renamed: "timing()")
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
    public func removedOnCompletion(_ value: Bool) -> PandaChain {
        object.isRemovedOnCompletion = value
        return self
    }
}
