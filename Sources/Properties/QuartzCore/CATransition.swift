//
//  CATransition.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import QuartzCore

extension PandaChain where Object: CATransition {
    @discardableResult
    public func type(_ value: String) -> PandaChain {
        object.type = value
        return self
    }

    @discardableResult
    public func subtype(_ value: String?) -> PandaChain {
        object.subtype = value
        return self
    }

    @discardableResult
    public func startProgress(_ value: Float) -> PandaChain {
        object.startProgress = value
        return self
    }

    @discardableResult
    public func endProgress(_ value: Float) -> PandaChain {
        object.endProgress = value
        return self
    }
}
