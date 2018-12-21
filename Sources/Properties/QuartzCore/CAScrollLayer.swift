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
        object.scrollMode = convertToCAScrollLayerScrollMode(value)
        return self
    }
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToCAScrollLayerScrollMode(_ input: String) -> CAScrollLayerScrollMode {
	return CAScrollLayerScrollMode(rawValue: input)
}
