//
//  CADisplayLink.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import QuartzCore

extension PandaChain where Object: CADisplayLink {
    @discardableResult
    public func paused(_ value: Bool) -> PandaChain {
        object.isPaused = value
        return self
    }
}
