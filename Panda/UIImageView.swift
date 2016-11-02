//
//  UIImageView.swift
//  Panda
//
//  Created by Javier on 11/1/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import UIKit

extension UIImageView {
    @discardableResult
    public func image(_ value: UIImage?) -> Self {
        image = value
        return self
    }

    @discardableResult
    public func highlightedImage(_ value: UIImage?) -> Self {
        highlightedImage = value
        return self
    }

    @discardableResult
    public func animationImages(_ value: [UIImage]?) -> Self {
        animationImages = value
        return self
    }

    @discardableResult
    public func highlightedAnimationImages(_ value: [UIImage]?) -> Self {
        highlightedAnimationImages = value
        return self
    }

    @discardableResult
    public func animationDuration(_ value: TimeInterval) -> Self {
        animationDuration = value
        return self
    }

    @discardableResult
    public func animationRepeatCount(_ value: Int) -> Self {
        animationRepeatCount = value
        return self
    }

    @discardableResult
    public func isHighlighted(_ value: Bool) -> Self {
        isHighlighted = value
        return self
    }
}
