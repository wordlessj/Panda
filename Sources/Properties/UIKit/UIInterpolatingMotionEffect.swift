//
//  UIInterpolatingMotionEffect.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIInterpolatingMotionEffect {
    /// `minimumRelativeValue`
    @discardableResult
    public func minRelativeValue(_ value: Any?) -> PandaChain {
        object.minimumRelativeValue = value
        return self
    }

    @available(*, deprecated, renamed: "minRelativeValue()")
    @discardableResult
    public func minimumRelativeValue(_ value: Any?) -> PandaChain {
        object.minimumRelativeValue = value
        return self
    }

    /// `maximumRelativeValue`
    @discardableResult
    public func maxRelativeValue(_ value: Any?) -> PandaChain {
        object.maximumRelativeValue = value
        return self
    }

    @available(*, deprecated, renamed: "maxRelativeValue()")
    @discardableResult
    public func maximumRelativeValue(_ value: Any?) -> PandaChain {
        object.maximumRelativeValue = value
        return self
    }
}
