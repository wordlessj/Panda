//
//  UIViewExtensions.swift
//  Panda
//
//  Created by Javier on 10/31/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import UIKit

extension UIView {
    @discardableResult
    public func addSubviews(_ views: UIView...) -> Self {
        return addSubviews(views)
    }

    @discardableResult
    public func addSubviews(_ views: [UIView]) -> Self {
        views.forEach { addSubview($0) }
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func addLayoutGuides(_ layoutGuides: UILayoutGuide...) -> Self {
        return addLayoutGuides(layoutGuides)
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func addLayoutGuides(_ layoutGuides: [UILayoutGuide]) -> Self {
        layoutGuides.forEach { addLayoutGuide($0) }
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func removeLayoutGuides(_ layoutGuides: UILayoutGuide...) -> Self {
        return removeLayoutGuides(layoutGuides)
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func removeLayoutGuides(_ layoutGuides: [UILayoutGuide]) -> Self {
        layoutGuides.forEach { removeLayoutGuide($0) }
        return self
    }

    @discardableResult
    public func addGestureRecognizers(_ gestureRecognizers: UIGestureRecognizer...) -> Self {
        return addGestureRecognizers(gestureRecognizers)
    }

    @discardableResult
    public func addGestureRecognizers(_ gestureRecognizers: [UIGestureRecognizer]) -> Self {
        gestureRecognizers.forEach { addGestureRecognizer($0) }
        return self
    }

    @discardableResult
    public func removeGestureRecognizers(_ gestureRecognizers: UIGestureRecognizer...) -> Self {
        return removeGestureRecognizers(gestureRecognizers)
    }

    @discardableResult
    public func removeGestureRecognizers(_ gestureRecognizers: [UIGestureRecognizer]) -> Self {
        gestureRecognizers.forEach { removeGestureRecognizer($0) }
        return self
    }

    @discardableResult
    public func addMotionEffects(_ effects: UIMotionEffect...) -> Self {
        return addMotionEffects(effects)
    }

    @discardableResult
    public func addMotionEffects(_ effects: [UIMotionEffect]) -> Self {
        effects.forEach { addMotionEffect($0) }
        return self
    }

    @discardableResult
    public func removeMotionEffects(_ effects: UIMotionEffect...) -> Self {
        return removeMotionEffects(effects)
    }

    @discardableResult
    public func removeMotionEffects(_ effects: [UIMotionEffect]) -> Self {
        effects.forEach { removeMotionEffect($0) }
        return self
    }
}

extension Array where Element: UIView {
    public func removeFromSuperview() {
        forEach { $0.removeFromSuperview() }
    }
}

extension UIView {
    @discardableResult
    public func animateConstraints(duration: TimeInterval,
                                   delay: TimeInterval = 0,
                                   options: UIViewAnimationOptions = [],
                                   completion: ((Bool) -> ())? = nil) -> Self {
        UIView.animate(withDuration: duration,
                       delay: delay,
                       options: options,
                       animations: { self.layoutIfNeeded() },
                       completion: completion)
        return self
    }

    @discardableResult
    public func animateConstraints(duration: TimeInterval,
                                   delay: TimeInterval = 0,
                                   usingSpringWithDamping dampingRatio: CGFloat,
                                   initialSpringVelocity velocity: CGFloat = 0,
                                   options: UIViewAnimationOptions = [],
                                   completion: ((Bool) -> ())? = nil) -> Self {
        UIView.animate(withDuration: duration,
                       delay: delay,
                       usingSpringWithDamping: dampingRatio,
                       initialSpringVelocity: velocity,
                       options: options,
                       animations: { self.layoutIfNeeded() },
                       completion: completion)
        return self
    }
}

extension UIView {
    @discardableResult
    public func cornerRadius(ratio: CGFloat) -> Self {
        return cornerRadius(ratio * min(bounds.size.width, bounds.size.height))
    }

    @discardableResult
    public func cornerRadius(_ value: CGFloat) -> Self {
        clipsToBounds = true
        layer.cornerRadius = value
        return self
    }

    @discardableResult
    public func border(width: CGFloat, color: UIColor?) -> Self {
        layer.borderWidth = width
        layer.borderColor = color?.cgColor
        return self
    }

    @discardableResult
    public func shadow(opacity: CGFloat,
                       radius: CGFloat,
                       offset: CGSize,
                       color: UIColor?,
                       path: CGPath? = nil) -> Self {
        layer.shadowOpacity = Float(opacity)
        layer.shadowRadius = radius
        layer.shadowOffset = offset
        layer.shadowColor = color?.cgColor
        layer.shadowPath = path
        return self
    }
}
