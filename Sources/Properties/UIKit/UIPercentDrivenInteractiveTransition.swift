//
//  UIPercentDrivenInteractiveTransition.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIPercentDrivenInteractiveTransition {
    @discardableResult
    public func completionSpeed(_ value: CGFloat) -> PandaChain {
        object.completionSpeed = value
        return self
    }

    @discardableResult
    public func completionCurve(_ value: UIView.AnimationCurve) -> PandaChain {
        object.completionCurve = value
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func timingCurve(_ value: UITimingCurveProvider?) -> PandaChain {
        object.timingCurve = value
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func wantsInteractiveStart(_ value: Bool) -> PandaChain {
        object.wantsInteractiveStart = value
        return self
    }
}
