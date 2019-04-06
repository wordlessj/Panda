//
//  UIImageView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIImageView {
    @discardableResult
    public func image(_ value: UIImage?) -> PandaChain {
        object.image = value
        return self
    }

    @discardableResult
    public func highlightedImage(_ value: UIImage?) -> PandaChain {
        object.highlightedImage = value
        return self
    }

    @discardableResult
    public func isUserInteractionEnabled(_ value: Bool) -> PandaChain {
        object.isUserInteractionEnabled = value
        return self
    }

    @discardableResult
    public func isHighlighted(_ value: Bool) -> PandaChain {
        object.isHighlighted = value
        return self
    }

    @discardableResult
    public func animationImages(_ value: [UIImage]?) -> PandaChain {
        object.animationImages = value
        return self
    }

    @discardableResult
    public func highlightedAnimationImages(_ value: [UIImage]?) -> PandaChain {
        object.highlightedAnimationImages = value
        return self
    }

    @discardableResult
    public func animationDuration(_ value: TimeInterval) -> PandaChain {
        object.animationDuration = value
        return self
    }

    @discardableResult
    public func animationRepeatCount(_ value: Int) -> PandaChain {
        object.animationRepeatCount = value
        return self
    }

    @discardableResult
    public func tintColor(_ value: UIColor!) -> PandaChain {
        object.tintColor = value
        return self
    }
}
