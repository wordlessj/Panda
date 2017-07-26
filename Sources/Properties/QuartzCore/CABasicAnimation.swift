//
//  CABasicAnimation.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import QuartzCore

extension PandaChain where Object: CABasicAnimation {
    /// `fromValue`
    @discardableResult
    public func from(_ value: Any?) -> PandaChain {
        object.fromValue = value
        return self
    }

    @available(*, deprecated, renamed: "from()")
    @discardableResult
    public func fromValue(_ value: Any?) -> PandaChain {
        object.fromValue = value
        return self
    }

    /// `toValue`
    @discardableResult
    public func to(_ value: Any?) -> PandaChain {
        object.toValue = value
        return self
    }

    @available(*, deprecated, renamed: "to()")
    @discardableResult
    public func toValue(_ value: Any?) -> PandaChain {
        object.toValue = value
        return self
    }

    /// `byValue`
    @discardableResult
    public func by(_ value: Any?) -> PandaChain {
        object.byValue = value
        return self
    }

    @available(*, deprecated, renamed: "by()")
    @discardableResult
    public func byValue(_ value: Any?) -> PandaChain {
        object.byValue = value
        return self
    }
}
