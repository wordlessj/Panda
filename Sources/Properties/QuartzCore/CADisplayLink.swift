//
//  CADisplayLink.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import QuartzCore

extension PandaChain where Object: CADisplayLink {
    @discardableResult
    public func isPaused(_ value: Bool) -> PandaChain {
        object.isPaused = value
        return self
    }

    @available(iOS, introduced: 3.1, deprecated: 10.0)
    @discardableResult
    public func frameInterval(_ value: Int) -> PandaChain {
        object.frameInterval = value
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func preferredFramesPerSecond(_ value: Int) -> PandaChain {
        object.preferredFramesPerSecond = value
        return self
    }
}
