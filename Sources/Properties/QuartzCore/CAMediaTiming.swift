//
//  CAMediaTiming.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import QuartzCore

extension PandaChain where Object: CAMediaTiming {
    @discardableResult
    public func beginTime(_ value: CFTimeInterval) -> PandaChain {
        object.beginTime = value
        return self
    }

    @discardableResult
    public func duration(_ value: CFTimeInterval) -> PandaChain {
        object.duration = value
        return self
    }

    @discardableResult
    public func speed(_ value: Float) -> PandaChain {
        object.speed = value
        return self
    }

    @discardableResult
    public func timeOffset(_ value: CFTimeInterval) -> PandaChain {
        object.timeOffset = value
        return self
    }

    @discardableResult
    public func repeatCount(_ value: Float) -> PandaChain {
        object.repeatCount = value
        return self
    }

    @discardableResult
    public func repeatDuration(_ value: CFTimeInterval) -> PandaChain {
        object.repeatDuration = value
        return self
    }

    @discardableResult
    public func autoreverses(_ value: Bool) -> PandaChain {
        object.autoreverses = value
        return self
    }

    @discardableResult
    public func fillMode(_ value: CAMediaTimingFillMode) -> PandaChain {
        object.fillMode = value
        return self
    }
}
