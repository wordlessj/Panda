//
//  CAScrollLayer.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import QuartzCore

extension PandaChain where Object: CAScrollLayer {
    @discardableResult
    public func scrollMode(_ value: String) -> PandaChain {
        object.scrollMode = value
        return self
    }
}
