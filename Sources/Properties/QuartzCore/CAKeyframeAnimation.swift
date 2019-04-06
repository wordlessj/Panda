//
//  CAKeyframeAnimation.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import QuartzCore

extension PandaChain where Object: CAKeyframeAnimation {
    @discardableResult
    public func values(_ value: [Any]?) -> PandaChain {
        object.values = value
        return self
    }

    @discardableResult
    public func path(_ value: CGPath?) -> PandaChain {
        object.path = value
        return self
    }

    @discardableResult
    public func keyTimes(_ value: [NSNumber]?) -> PandaChain {
        object.keyTimes = value
        return self
    }

    @discardableResult
    public func timingFunctions(_ value: [CAMediaTimingFunction]?) -> PandaChain {
        object.timingFunctions = value
        return self
    }

    @discardableResult
    public func calculationMode(_ value: CAAnimationCalculationMode) -> PandaChain {
        object.calculationMode = value
        return self
    }

    @discardableResult
    public func tensionValues(_ value: [NSNumber]?) -> PandaChain {
        object.tensionValues = value
        return self
    }

    @discardableResult
    public func continuityValues(_ value: [NSNumber]?) -> PandaChain {
        object.continuityValues = value
        return self
    }

    @discardableResult
    public func biasValues(_ value: [NSNumber]?) -> PandaChain {
        object.biasValues = value
        return self
    }

    @discardableResult
    public func rotationMode(_ value: CAAnimationRotationMode?) -> PandaChain {
        object.rotationMode = value
        return self
    }
}
