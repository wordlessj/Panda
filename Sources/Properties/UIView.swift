//
//  UIView.swift
//  Panda
//
//  Created by Javier on 10/31/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import UIKit

extension UIView {
    @discardableResult
    public func backgroundColor(_ value: UIColor?) -> Self {
        backgroundColor = value
        return self
    }

    @discardableResult
    public func isHidden(_ value: Bool) -> Self {
        isHidden = value
        return self
    }

    @discardableResult
    public func alpha(_ value: CGFloat) -> Self {
        alpha = value
        return self
    }

    @discardableResult
    public func isOpaque(_ value: Bool) -> Self {
        isOpaque = value
        return self
    }

    @discardableResult
    public func tintColor(_ value: UIColor!) -> Self {
        tintColor = value
        return self
    }

    @discardableResult
    public func tintAdjustmentMode(_ value: UIViewTintAdjustmentMode) -> Self {
        tintAdjustmentMode = value
        return self
    }

    @discardableResult
    public func clipsToBounds(_ value: Bool) -> Self {
        clipsToBounds = value
        return self
    }

    @discardableResult
    public func clearsContextBeforeDrawing(_ value: Bool) -> Self {
        clearsContextBeforeDrawing = value
        return self
    }

    @discardableResult
    public func mask(_ value: UIView?) -> Self {
        mask = value
        return self
    }

    @discardableResult
    public func isUserInteractionEnabled(_ value: Bool) -> Self {
        isUserInteractionEnabled = value
        return self
    }

    @discardableResult
    public func isMultipleTouchEnabled(_ value: Bool) -> Self {
        isMultipleTouchEnabled = value
        return self
    }

    @discardableResult
    public func isExclusiveTouch(_ value: Bool) -> Self {
        isExclusiveTouch = value
        return self
    }

    @discardableResult
    public func frame(_ value: CGRect) -> Self {
        frame = value
        return self
    }

    @discardableResult
    public func bounds(_ value: CGRect) -> Self {
        bounds = value
        return self
    }

    @discardableResult
    public func center(_ value: CGPoint) -> Self {
        center = value
        return self
    }

    @discardableResult
    public func transform(_ value: CGAffineTransform) -> Self {
        transform = value
        return self
    }

    @discardableResult
    public func autoresizingMask(_ value: UIViewAutoresizing) -> Self {
        autoresizingMask = value
        return self
    }

    @discardableResult
    public func autoresizesSubviews(_ value: Bool) -> Self {
        autoresizesSubviews = value
        return self
    }

    @discardableResult
    public func contentMode(_ value: UIViewContentMode) -> Self {
        contentMode = value
        return self
    }

    @discardableResult
    public func translatesAutoresizingMaskIntoConstraints(_ value: Bool) -> Self {
        translatesAutoresizingMaskIntoConstraints = value
        return self
    }

    @discardableResult
    public func contentCompressionResistancePriority(_ priority: UILayoutPriority,
                                                     for axis: UILayoutConstraintAxis) -> Self {
        setContentCompressionResistancePriority(priority, for: axis)
        return self
    }

    @discardableResult
    public func contentHuggingPriority(_ priority: UILayoutPriority,
                                       for axis: UILayoutConstraintAxis) -> Self {
        setContentHuggingPriority(priority, for: axis)
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func semanticContentAttribute(_ value: UISemanticContentAttribute) -> Self {
        semanticContentAttribute = value
        return self
    }

    @discardableResult
    public func layoutMargins(_ value: UIEdgeInsets) -> Self {
        layoutMargins = value
        return self
    }

    @discardableResult
    public func preservesSuperviewLayoutMargins(_ value: Bool) -> Self {
        preservesSuperviewLayoutMargins = value
        return self
    }

    @discardableResult
    public func contentScaleFactor(_ value: CGFloat) -> Self {
        contentScaleFactor = value
        return self
    }

    @discardableResult
    public func gestureRecognizers(_ value: [UIGestureRecognizer]?) -> Self {
        gestureRecognizers = value
        return self
    }

    @discardableResult
    public func motionEffects(_ value: [UIMotionEffect]) -> Self {
        motionEffects = value
        return self
    }

    @discardableResult
    public func restorationIdentifier(_ value: String?) -> Self {
        restorationIdentifier = value
        return self
    }

    @discardableResult
    public func tag(_ value: Int) -> Self {
        tag = value
        return self
    }
}
