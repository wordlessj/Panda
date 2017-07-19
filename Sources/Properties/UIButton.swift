//
//  UIButton.swift
//  Panda
//
//  Created by Javier on 11/1/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import UIKit

extension UIButton {
    @discardableResult
    public func title(_ title: String?, for state: UIControlState = .normal) -> Self {
        setTitle(title, for: state)
        return self
    }

    @discardableResult
    public func attributedTitle(_ title: NSAttributedString?, for state: UIControlState = .normal) -> Self {
        setAttributedTitle(title, for: state)
        return self
    }

    @discardableResult
    public func titleColor(_ color: UIColor?, for state: UIControlState = .normal) -> Self {
        setTitleColor(color, for: state)
        return self
    }

    @discardableResult
    public func titleShadowColor(_ color: UIColor?, for state: UIControlState = .normal) -> Self {
        setTitleShadowColor(color, for: state)
        return self
    }

    @discardableResult
    public func reversesTitleShadowWhenHighlighted(_ value: Bool) -> Self {
        reversesTitleShadowWhenHighlighted = value
        return self
    }

    @discardableResult
    public func adjustsImageWhenHighlighted(_ value: Bool) -> Self {
        adjustsImageWhenHighlighted = value
        return self
    }

    @discardableResult
    public func adjustsImageWhenDisabled(_ value: Bool) -> Self {
        adjustsImageWhenDisabled = value
        return self
    }

    @discardableResult
    public func showsTouchWhenHighlighted(_ value: Bool) -> Self {
        showsTouchWhenHighlighted = value
        return self
    }

    @discardableResult
    public func backgroundImage(_ image: UIImage?, for state: UIControlState = .normal) -> Self {
        setBackgroundImage(image, for: state)
        return self
    }

    @discardableResult
    public func image(_ image: UIImage?, for state: UIControlState = .normal) -> Self {
        setImage(image, for: state)
        return self
    }

    @discardableResult
    public func contentEdgeInsets(_ value: UIEdgeInsets) -> Self {
        contentEdgeInsets = value
        return self
    }

    @discardableResult
    public func titleEdgeInsets(_ value: UIEdgeInsets) -> Self {
        titleEdgeInsets = value
        return self
    }

    @discardableResult
    public func imageEdgeInsets(_ value: UIEdgeInsets) -> Self {
        imageEdgeInsets = value
        return self
    }
}
