//
//  CASpringAnimation.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import QuartzCore

@available(iOS 9.0, *)
extension PandaChain where Object: CASpringAnimation {
    @discardableResult
    public func mass(_ value: CGFloat) -> PandaChain {
        object.mass = value
        return self
    }

    @discardableResult
    public func stiffness(_ value: CGFloat) -> PandaChain {
        object.stiffness = value
        return self
    }

    @discardableResult
    public func damping(_ value: CGFloat) -> PandaChain {
        object.damping = value
        return self
    }

    @discardableResult
    public func initialVelocity(_ value: CGFloat) -> PandaChain {
        object.initialVelocity = value
        return self
    }
}
