//
//  UIImageView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UIImageView {
    @discardableResult
    public func image(_ value: UIImage?) -> Self {
        return addAttributes(key: "image", value: value) {
            $0.image = value
            $0.invalidateLayout()
        }
    }

    @discardableResult
    public func highlightedImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "highlightedImage", value: value) {
            $0.highlightedImage = value
            $0.invalidateLayout()
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
    public func highlighted(_ value: Bool) -> Self {
        return addAttributes(key: "isHighlighted", value: value) {
            $0.isHighlighted = value
        }
    }

    @discardableResult
    public func animationImages(_ value: [UIImage]?) -> Self {
        return addAttributes(key: "animationImages", value: value) {
            $0.animationImages = value
            $0.invalidateLayout()
        }
    }

    @discardableResult
    public func highlightedAnimationImages(_ value: [UIImage]?) -> Self {
        return addAttributes(key: "highlightedAnimationImages", value: value) {
            $0.highlightedAnimationImages = value
        }
    }

    @discardableResult
    public func animationDuration(_ value: TimeInterval) -> Self {
        return addAttributes(key: "animationDuration", value: value) {
            $0.animationDuration = value
        }
    }

    @discardableResult
    public func animationRepeatCount(_ value: Int) -> Self {
        return addAttributes(key: "animationRepeatCount", value: value) {
            $0.animationRepeatCount = value
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
}
