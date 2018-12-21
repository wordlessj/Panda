//
//  CATransition.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import QuartzCore

extension PandaChain where Object: CATransition {
    @discardableResult
    public func type(_ value: String) -> PandaChain {
        object.type = convertToCATransitionType(value)
        return self
    }

    @discardableResult
    public func subtype(_ value: String?) -> PandaChain {
        object.subtype = convertToOptionalCATransitionSubtype(value)
        return self
    }

    @discardableResult
    public func startProgress(_ value: Float) -> PandaChain {
        object.startProgress = value
        return self
    }

    @discardableResult
    public func endProgress(_ value: Float) -> PandaChain {
        object.endProgress = value
        return self
    }
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToCATransitionType(_ input: String) -> CATransitionType {
	return CATransitionType(rawValue: input)
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToOptionalCATransitionSubtype(_ input: String?) -> CATransitionSubtype? {
	guard let input = input else { return nil }
	return CATransitionSubtype(rawValue: input)
}
