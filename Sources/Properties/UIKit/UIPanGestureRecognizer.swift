//
//  UIPanGestureRecognizer.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIPanGestureRecognizer {
    /// `minimumNumberOfTouches`
    @discardableResult
    public func minTouches(_ value: Int) -> PandaChain {
        object.minimumNumberOfTouches = value
        return self
    }

    @available(*, deprecated, renamed: "minTouches()")
    @discardableResult
    public func minimumNumberOfTouches(_ value: Int) -> PandaChain {
        object.minimumNumberOfTouches = value
        return self
    }

    /// `maximumNumberOfTouches`
    @discardableResult
    public func maxTouches(_ value: Int) -> PandaChain {
        object.maximumNumberOfTouches = value
        return self
    }

    @available(*, deprecated, renamed: "maxTouches()")
    @discardableResult
    public func maximumNumberOfTouches(_ value: Int) -> PandaChain {
        object.maximumNumberOfTouches = value
        return self
    }

    @discardableResult
    public func translation(_ translation: CGPoint, in view: UIView?) -> PandaChain {
        object.setTranslation(translation, in: view)
        return self
    }
}
