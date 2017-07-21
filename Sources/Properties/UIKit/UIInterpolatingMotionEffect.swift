//
//  UIInterpolatingMotionEffect.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIInterpolatingMotionEffect {
    @discardableResult
    public func minimumRelativeValue(_ value: Any?) -> PandaChain {
        object.minimumRelativeValue = value
        return self
    }

    @discardableResult
    public func maximumRelativeValue(_ value: Any?) -> PandaChain {
        object.maximumRelativeValue = value
        return self
    }
}
