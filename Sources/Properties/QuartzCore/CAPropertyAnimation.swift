//
//  CAPropertyAnimation.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import QuartzCore

extension PandaChain where Object: CAPropertyAnimation {
    @discardableResult
    public func keyPath(_ value: String?) -> PandaChain {
        object.keyPath = value
        return self
    }

    @discardableResult
    public func isAdditive(_ value: Bool) -> PandaChain {
        object.isAdditive = value
        return self
    }

    @discardableResult
    public func isCumulative(_ value: Bool) -> PandaChain {
        object.isCumulative = value
        return self
    }

    @discardableResult
    public func valueFunction(_ value: CAValueFunction?) -> PandaChain {
        object.valueFunction = value
        return self
    }
}
