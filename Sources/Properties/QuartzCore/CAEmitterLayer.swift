//
//  CAEmitterLayer.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import QuartzCore

extension PandaChain where Object: CAEmitterLayer {
    @discardableResult
    public func emitterCells(_ value: [CAEmitterCellConvertible]?) -> PandaChain {
        object.emitterCells = unboxArray(value)
        return self
    }

    @discardableResult
    public func birthRate(_ value: Float) -> PandaChain {
        object.birthRate = value
        return self
    }

    @discardableResult
    public func lifetime(_ value: Float) -> PandaChain {
        object.lifetime = value
        return self
    }

    @discardableResult
    public func emitterPosition(_ value: CGPoint) -> PandaChain {
        object.emitterPosition = value
        return self
    }

    @discardableResult
    public func emitterZPosition(_ value: CGFloat) -> PandaChain {
        object.emitterZPosition = value
        return self
    }

    @discardableResult
    public func emitterSize(_ value: CGSize) -> PandaChain {
        object.emitterSize = value
        return self
    }

    @discardableResult
    public func emitterDepth(_ value: CGFloat) -> PandaChain {
        object.emitterDepth = value
        return self
    }

    @discardableResult
    public func emitterShape(_ value: String) -> PandaChain {
        object.emitterShape = value
        return self
    }

    @discardableResult
    public func emitterMode(_ value: String) -> PandaChain {
        object.emitterMode = value
        return self
    }

    @discardableResult
    public func renderMode(_ value: String) -> PandaChain {
        object.renderMode = value
        return self
    }

    @discardableResult
    public func preservesDepth(_ value: Bool) -> PandaChain {
        object.preservesDepth = value
        return self
    }

    @discardableResult
    public func velocity(_ value: Float) -> PandaChain {
        object.velocity = value
        return self
    }

    @discardableResult
    public func scale(_ value: Float) -> PandaChain {
        object.scale = value
        return self
    }

    @discardableResult
    public func spin(_ value: Float) -> PandaChain {
        object.spin = value
        return self
    }

    @discardableResult
    public func seed(_ value: UInt32) -> PandaChain {
        object.seed = value
        return self
    }
}
