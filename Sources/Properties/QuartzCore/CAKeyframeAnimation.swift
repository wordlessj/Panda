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

    /// `timingFunctions`
    @discardableResult
    public func timings(_ value: [CAMediaTimingFunction]?) -> PandaChain {
        object.timingFunctions = value
        return self
    }

    @available(*, deprecated, renamed: "timings()")
    @discardableResult
    public func timingFunctions(_ value: [CAMediaTimingFunction]?) -> PandaChain {
        object.timingFunctions = value
        return self
    }

    @discardableResult
    public func calculationMode(_ value: String) -> PandaChain {
        object.calculationMode = convertToCAAnimationCalculationMode(value)
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
    public func rotationMode(_ value: String?) -> PandaChain {
        object.rotationMode = convertToOptionalCAAnimationRotationMode(value)
        return self
    }
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToCAAnimationCalculationMode(_ input: String) -> CAAnimationCalculationMode {
	return CAAnimationCalculationMode(rawValue: input)
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToOptionalCAAnimationRotationMode(_ input: String?) -> CAAnimationRotationMode? {
	guard let input = input else { return nil }
	return CAAnimationRotationMode(rawValue: input)
}
