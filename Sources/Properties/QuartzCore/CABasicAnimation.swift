//
//  CABasicAnimation.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import QuartzCore

extension PandaChain where Object: CABasicAnimation {
    @discardableResult
    public func fromValue(_ value: Any?) -> PandaChain {
        object.fromValue = value
        return self
    }

    @discardableResult
    public func toValue(_ value: Any?) -> PandaChain {
        object.toValue = value
        return self
    }

    @discardableResult
    public func byValue(_ value: Any?) -> PandaChain {
        object.byValue = value
        return self
    }
}
