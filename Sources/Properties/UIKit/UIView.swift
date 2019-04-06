//
//  UIView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

public protocol UIViewConvertible {}

extension UIView: UIViewConvertible {}
extension PandaChain: UIViewConvertible {}

extension PandaChain where Object: UIView {
    @discardableResult
    public func isUserInteractionEnabled(_ value: Bool) -> PandaChain {
        object.isUserInteractionEnabled = value
        return self
    }

    @discardableResult
    public func tag(_ value: Int) -> PandaChain {
        object.tag = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func semanticContentAttribute(_ value: UISemanticContentAttribute) -> PandaChain {
        object.semanticContentAttribute = value
        return self
    }

    @discardableResult
    public func frame(_ value: CGRect) -> PandaChain {
        object.frame = value
        return self
    }

    @discardableResult
    public func bounds(_ value: CGRect) -> PandaChain {
        object.bounds = value
        return self
    }

    @discardableResult
    public func center(_ value: CGPoint) -> PandaChain {
        object.center = value
        return self
    }

    @discardableResult
    public func transform(_ value: CGAffineTransform) -> PandaChain {
        object.transform = value
        return self
    }

    @discardableResult
    public func contentScaleFactor(_ value: CGFloat) -> PandaChain {
        object.contentScaleFactor = value
        return self
    }

    @discardableResult
    public func isMultipleTouchEnabled(_ value: Bool) -> PandaChain {
        object.isMultipleTouchEnabled = value
        return self
    }

    @discardableResult
    public func isExclusiveTouch(_ value: Bool) -> PandaChain {
        object.isExclusiveTouch = value
        return self
    }

    @discardableResult
    public func autoresizesSubviews(_ value: Bool) -> PandaChain {
        object.autoresizesSubviews = value
        return self
    }

    @discardableResult
    public func autoresizingMask(_ value: UIView.AutoresizingMask) -> PandaChain {
        object.autoresizingMask = value
        return self
    }

    @discardableResult
    public func layoutMargins(_ value: UIEdgeInsets) -> PandaChain {
        object.layoutMargins = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func directionalLayoutMargins(_ value: NSDirectionalEdgeInsets) -> PandaChain {
        object.directionalLayoutMargins = value
        return self
    }

    @discardableResult
    public func preservesSuperviewLayoutMargins(_ value: Bool) -> PandaChain {
        object.preservesSuperviewLayoutMargins = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func insetsLayoutMarginsFromSafeArea(_ value: Bool) -> PandaChain {
        object.insetsLayoutMarginsFromSafeArea = value
        return self
    }

    @discardableResult
    public func clipsToBounds(_ value: Bool) -> PandaChain {
        object.clipsToBounds = value
        return self
    }

    @discardableResult
    public func backgroundColor(_ value: UIColor?) -> PandaChain {
        object.backgroundColor = value
        return self
    }

    @discardableResult
    public func alpha(_ value: CGFloat) -> PandaChain {
        object.alpha = value
        return self
    }

    @discardableResult
    public func isOpaque(_ value: Bool) -> PandaChain {
        object.isOpaque = value
        return self
    }

    @discardableResult
    public func clearsContextBeforeDrawing(_ value: Bool) -> PandaChain {
        object.clearsContextBeforeDrawing = value
        return self
    }

    @discardableResult
    public func isHidden(_ value: Bool) -> PandaChain {
        object.isHidden = value
        return self
    }

    @discardableResult
    public func contentMode(_ value: UIView.ContentMode) -> PandaChain {
        object.contentMode = value
        return self
    }

    @discardableResult
    public func mask(_ value: UIViewConvertible?) -> PandaChain {
        object.mask = unbox(value)
        return self
    }

    @discardableResult
    public func tintColor(_ value: UIColor!) -> PandaChain {
        object.tintColor = value
        return self
    }

    @discardableResult
    public func tintAdjustmentMode(_ value: UIView.TintAdjustmentMode) -> PandaChain {
        object.tintAdjustmentMode = value
        return self
    }

    @discardableResult
    public func gestureRecognizers(_ value: [UIGestureRecognizerConvertible]?) -> PandaChain {
        object.gestureRecognizers = unboxArray(value)
        return self
    }

    @discardableResult
    public func motionEffects(_ value: [UIMotionEffect]) -> PandaChain {
        object.motionEffects = value
        return self
    }

    @discardableResult
    public func translatesAutoresizingMaskIntoConstraints(_ value: Bool) -> PandaChain {
        object.translatesAutoresizingMaskIntoConstraints = value
        return self
    }

    @discardableResult
    public func restorationIdentifier(_ value: String?) -> PandaChain {
        object.restorationIdentifier = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func interactions(_ value: [UIInteraction]) -> PandaChain {
        object.interactions = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func accessibilityIgnoresInvertColors(_ value: Bool) -> PandaChain {
        object.accessibilityIgnoresInvertColors = value
        return self
    }

    @discardableResult
    public func needsDisplay(_ rect: CGRect) -> PandaChain {
        object.setNeedsDisplay(rect)
        return self
    }

    @discardableResult
    public func contentHuggingPriority(_ priority: UILayoutPriority, for axis: NSLayoutConstraint.Axis) -> PandaChain {
        object.setContentHuggingPriority(priority, for: axis)
        return self
    }

    @discardableResult
    public func contentCompressionResistancePriority(_ priority: UILayoutPriority, for axis: NSLayoutConstraint.Axis) -> PandaChain {
        object.setContentCompressionResistancePriority(priority, for: axis)
        return self
    }
}
