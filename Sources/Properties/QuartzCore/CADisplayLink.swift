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

    @available(iOS 10.0, *)
    @discardableResult
    public func preferredFramesPerSecond(_ value: Int) -> PandaChain {
        object.preferredFramesPerSecond = value
        return self
    }
}
