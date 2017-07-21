//
//  CAReplicatorLayer.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import QuartzCore

extension PandaChain where Object: CAReplicatorLayer {
    @discardableResult
    public func instanceCount(_ value: Int) -> PandaChain {
        object.instanceCount = value
        return self
    }

    @discardableResult
    public func preservesDepth(_ value: Bool) -> PandaChain {
        object.preservesDepth = value
        return self
    }

    @discardableResult
    public func instanceDelay(_ value: CFTimeInterval) -> PandaChain {
        object.instanceDelay = value
        return self
    }

    @discardableResult
    public func instanceTransform(_ value: CATransform3D) -> PandaChain {
        object.instanceTransform = value
        return self
    }

    @discardableResult
    public func instanceColor(_ value: CGColor?) -> PandaChain {
        object.instanceColor = value
        return self
    }

    @discardableResult
    public func instanceRedOffset(_ value: Float) -> PandaChain {
        object.instanceRedOffset = value
        return self
    }

    @discardableResult
    public func instanceGreenOffset(_ value: Float) -> PandaChain {
        object.instanceGreenOffset = value
        return self
    }

    @discardableResult
    public func instanceBlueOffset(_ value: Float) -> PandaChain {
        object.instanceBlueOffset = value
        return self
    }

    @discardableResult
    public func instanceAlphaOffset(_ value: Float) -> PandaChain {
        object.instanceAlphaOffset = value
        return self
    }
}
