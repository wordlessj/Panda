//
//  UIView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UIView {
    @available(iOS 11.0, *)
    @discardableResult
    public func accessibilityIgnoresInvertColors(_ value: Bool) -> Self {
        return addAttributes(key: "accessibilityIgnoresInvertColors", value: value) {
            $0.accessibilityIgnoresInvertColors = value
        }
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func interactions(_ value: [UIInteraction]) -> Self {
        return addAttributes(key: "interactions", value: value) {
            $0.interactions = value
        }
    }

    /// `isUserInteractionEnabled`
    @discardableResult
    public func interactable(_ value: Bool) -> Self {
        return addAttributes(key: "isUserInteractionEnabled", value: value) {
            $0.isUserInteractionEnabled = value
        }
    }

    @available(*, deprecated, renamed: "interactable()")
    @discardableResult
    public func userInteractionEnabled(_ value: Bool) -> Self {
        return addAttributes(key: "isUserInteractionEnabled", value: value) {
            $0.isUserInteractionEnabled = value
        }
    }

    @discardableResult
    public func tag(_ value: Int) -> Self {
        return addAttributes(key: "tag", value: value) {
            $0.tag = value
        }
    }

    /// `semanticContentAttribute`
    @discardableResult
    public func semantics(_ value: UISemanticContentAttribute) -> Self {
        return addAttributes(key: "semanticContentAttribute", value: value) {
            $0.semanticContentAttribute = value
        }
    }

    @available(*, deprecated, renamed: "semantics()")
    @discardableResult
    public func semanticContentAttribute(_ value: UISemanticContentAttribute) -> Self {
        return addAttributes(key: "semanticContentAttribute", value: value) {
            $0.semanticContentAttribute = value
        }
    }

    @discardableResult
    public func frame(_ value: CGRect) -> Self {
        return addAttributes(key: "frame", value: value) {
            $0.frame = value
        }
    }

    @discardableResult
    public func bounds(_ value: CGRect) -> Self {
        return addAttributes(key: "bounds", value: value) {
            $0.bounds = value
        }
    }

    @discardableResult
    public func center(_ value: CGPoint) -> Self {
        return addAttributes(key: "center", value: value) {
            $0.center = value
        }
    }

    @discardableResult
    public func transform(_ value: CGAffineTransform) -> Self {
        return addAttributes(key: "transform", value: value) {
            $0.transform = value
        }
    }

    /// `contentScaleFactor`
    @discardableResult
    public func contentScale(_ value: CGFloat) -> Self {
        return addAttributes(key: "contentScaleFactor", value: value) {
            $0.contentScaleFactor = value
        }
    }

    @available(*, deprecated, renamed: "contentScale()")
    @discardableResult
    public func contentScaleFactor(_ value: CGFloat) -> Self {
        return addAttributes(key: "contentScaleFactor", value: value) {
            $0.contentScaleFactor = value
        }
    }

    /// `isMultipleTouchEnabled`
    @discardableResult
    public func multiTouchable(_ value: Bool) -> Self {
        return addAttributes(key: "isMultipleTouchEnabled", value: value) {
            $0.isMultipleTouchEnabled = value
        }
    }

    @available(*, deprecated, renamed: "multiTouchable()")
    @discardableResult
    public func multipleTouchEnabled(_ value: Bool) -> Self {
        return addAttributes(key: "isMultipleTouchEnabled", value: value) {
            $0.isMultipleTouchEnabled = value
        }
    }

    @discardableResult
    public func exclusiveTouch(_ value: Bool) -> Self {
        return addAttributes(key: "isExclusiveTouch", value: value) {
            $0.isExclusiveTouch = value
        }
    }

    /// `autoresizesSubviews`
    @discardableResult
    public func autoresizes(_ value: Bool) -> Self {
        return addAttributes(key: "autoresizesSubviews", value: value) {
            $0.autoresizesSubviews = value
        }
    }

    @available(*, deprecated, renamed: "autoresizes()")
    @discardableResult
    public func autoresizesSubviews(_ value: Bool) -> Self {
        return addAttributes(key: "autoresizesSubviews", value: value) {
            $0.autoresizesSubviews = value
        }
    }

    /// `autoresizingMask`
    @discardableResult
    public func autoresizing(_ value: UIViewAutoresizing) -> Self {
        return addAttributes(key: "autoresizingMask", value: value) {
            $0.autoresizingMask = value
        }
    }

    @available(*, deprecated, renamed: "autoresizing()")
    @discardableResult
    public func autoresizingMask(_ value: UIViewAutoresizing) -> Self {
        return addAttributes(key: "autoresizingMask", value: value) {
            $0.autoresizingMask = value
        }
    }

    /// `layoutMargins`
    @discardableResult
    public func margins(_ value: UIEdgeInsets) -> Self {
        return addAttributes(key: "layoutMargins", value: value) {
            $0.layoutMargins = value
        }
    }

    @available(*, deprecated, renamed: "margins()")
    @discardableResult
    public func layoutMargins(_ value: UIEdgeInsets) -> Self {
        return addAttributes(key: "layoutMargins", value: value) {
            $0.layoutMargins = value
        }
    }

    /// `directionalLayoutMargins`
    @available(iOS 11.0, *)
    @discardableResult
    public func directionalMargins(_ value: NSDirectionalEdgeInsets) -> Self {
        return addAttributes(key: "directionalLayoutMargins", value: value) {
            $0.directionalLayoutMargins = value
        }
    }

    @available(*, deprecated, renamed: "directionalMargins()")
    @available(iOS 11.0, *)
    @discardableResult
    public func directionalLayoutMargins(_ value: NSDirectionalEdgeInsets) -> Self {
        return addAttributes(key: "directionalLayoutMargins", value: value) {
            $0.directionalLayoutMargins = value
        }
    }

    /// `preservesSuperviewLayoutMargins`
    @discardableResult
    public func preservesSuperviewMargins(_ value: Bool) -> Self {
        return addAttributes(key: "preservesSuperviewLayoutMargins", value: value) {
            $0.preservesSuperviewLayoutMargins = value
        }
    }

    @available(*, deprecated, renamed: "preservesSuperviewMargins()")
    @discardableResult
    public func preservesSuperviewLayoutMargins(_ value: Bool) -> Self {
        return addAttributes(key: "preservesSuperviewLayoutMargins", value: value) {
            $0.preservesSuperviewLayoutMargins = value
        }
    }

    /// `insetsLayoutMarginsFromSafeArea`
    @available(iOS 11.0, *)
    @discardableResult
    public func insetsMarginsFromSafeArea(_ value: Bool) -> Self {
        return addAttributes(key: "insetsLayoutMarginsFromSafeArea", value: value) {
            $0.insetsLayoutMarginsFromSafeArea = value
        }
    }

    @available(*, deprecated, renamed: "insetsMarginsFromSafeArea()")
    @available(iOS 11.0, *)
    @discardableResult
    public func insetsLayoutMarginsFromSafeArea(_ value: Bool) -> Self {
        return addAttributes(key: "insetsLayoutMarginsFromSafeArea", value: value) {
            $0.insetsLayoutMarginsFromSafeArea = value
        }
    }

    /// `clipsToBounds`
    @discardableResult
    public func clips(_ value: Bool) -> Self {
        return addAttributes(key: "clipsToBounds", value: value) {
            $0.clipsToBounds = value
        }
    }

    @available(*, deprecated, renamed: "clips()")
    @discardableResult
    public func clipsToBounds(_ value: Bool) -> Self {
        return addAttributes(key: "clipsToBounds", value: value) {
            $0.clipsToBounds = value
        }
    }

    /// `backgroundColor`
    @discardableResult
    public func background(_ value: UIColor?) -> Self {
        return addAttributes(key: "backgroundColor", value: value) {
            $0.backgroundColor = value
        }
    }

    @available(*, deprecated, renamed: "background()")
    @discardableResult
    public func backgroundColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "backgroundColor", value: value) {
            $0.backgroundColor = value
        }
    }

    @discardableResult
    public func alpha(_ value: CGFloat) -> Self {
        return addAttributes(key: "alpha", value: value) {
            $0.alpha = value
        }
    }

    @discardableResult
    public func opaque(_ value: Bool) -> Self {
        return addAttributes(key: "isOpaque", value: value) {
            $0.isOpaque = value
        }
    }

    /// `clearsContextBeforeDrawing`
    @discardableResult
    public func clearsContext(_ value: Bool) -> Self {
        return addAttributes(key: "clearsContextBeforeDrawing", value: value) {
            $0.clearsContextBeforeDrawing = value
        }
    }

    @available(*, deprecated, renamed: "clearsContext()")
    @discardableResult
    public func clearsContextBeforeDrawing(_ value: Bool) -> Self {
        return addAttributes(key: "clearsContextBeforeDrawing", value: value) {
            $0.clearsContextBeforeDrawing = value
        }
    }

    @discardableResult
    public func hidden(_ value: Bool) -> Self {
        return addAttributes(key: "isHidden", value: value) {
            $0.isHidden = value
        }
    }

    /// `contentMode`
    @discardableResult
    public func mode(_ value: UIViewContentMode) -> Self {
        return addAttributes(key: "contentMode", value: value) {
            $0.contentMode = value
        }
    }

    @available(*, deprecated, renamed: "mode()")
    @discardableResult
    public func contentMode(_ value: UIViewContentMode) -> Self {
        return addAttributes(key: "contentMode", value: value) {
            $0.contentMode = value
        }
    }

    @discardableResult
    public func mask(_ value: UIView?) -> Self {
        return addAttributes(key: "mask", value: value) {
            $0.mask = value
        }
    }

    /// `tintColor`
    @discardableResult
    public func tint(_ value: UIColor?) -> Self {
        return addAttributes(key: "tintColor", value: value) {
            $0.tintColor = value
        }
    }

    @available(*, deprecated, renamed: "tint()")
    @discardableResult
    public func tintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "tintColor", value: value) {
            $0.tintColor = value
        }
    }

    /// `tintAdjustmentMode`
    @discardableResult
    public func tintAdjust(_ value: UIViewTintAdjustmentMode) -> Self {
        return addAttributes(key: "tintAdjustmentMode", value: value) {
            $0.tintAdjustmentMode = value
        }
    }

    @available(*, deprecated, renamed: "tintAdjust()")
    @discardableResult
    public func tintAdjustmentMode(_ value: UIViewTintAdjustmentMode) -> Self {
        return addAttributes(key: "tintAdjustmentMode", value: value) {
            $0.tintAdjustmentMode = value
        }
    }

    @discardableResult
    public func gestureRecognizers(_ value: [UIGestureRecognizer]?) -> Self {
        return addAttributes(key: "gestureRecognizers", value: value) {
            $0.gestureRecognizers = value
        }
    }

    @discardableResult
    public func motionEffects(_ value: [UIMotionEffect]) -> Self {
        return addAttributes(key: "motionEffects", value: value) {
            $0.motionEffects = value
        }
    }

    /// `translatesAutoresizingMaskIntoConstraints`
    @discardableResult
    public func translatesAutoresizing(_ value: Bool) -> Self {
        return addAttributes(key: "translatesAutoresizingMaskIntoConstraints", value: value) {
            $0.translatesAutoresizingMaskIntoConstraints = value
        }
    }

    @available(*, deprecated, renamed: "translatesAutoresizing()")
    @discardableResult
    public func translatesAutoresizingMaskIntoConstraints(_ value: Bool) -> Self {
        return addAttributes(key: "translatesAutoresizingMaskIntoConstraints", value: value) {
            $0.translatesAutoresizingMaskIntoConstraints = value
        }
    }

    /// `restorationIdentifier`
    @discardableResult
    public func restorationID(_ value: String?) -> Self {
        return addAttributes(key: "restorationIdentifier", value: value) {
            $0.restorationIdentifier = value
        }
    }

    @available(*, deprecated, renamed: "restorationID()")
    @discardableResult
    public func restorationIdentifier(_ value: String?) -> Self {
        return addAttributes(key: "restorationIdentifier", value: value) {
            $0.restorationIdentifier = value
        }
    }
}
