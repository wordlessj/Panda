//
//  UILabel.swift
//  Panda
//
//  Created by Javier on 11/1/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import UIKit

extension UILabel {
    @discardableResult
    public func text(_ value: String?) -> Self {
        text = value
        return self
    }

    @discardableResult
    public func attributedText(_ value: NSAttributedString?) -> Self {
        attributedText = value
        return self
    }

    @discardableResult
    public func font(_ value: UIFont!) -> Self {
        font = value
        return self
    }

    @discardableResult
    public func textColor(_ value: UIColor!) -> Self {
        textColor = value
        return self
    }

    @discardableResult
    public func textAlignment(_ value: NSTextAlignment) -> Self {
        textAlignment = value
        return self
    }

    @discardableResult
    public func lineBreakMode(_ value: NSLineBreakMode) -> Self {
        lineBreakMode = value
        return self
    }

    @discardableResult
    public func isEnabled(_ value: Bool) -> Self {
        isEnabled = value
        return self
    }

    @discardableResult
    public func adjustsFontSizeToFitWidth(_ value: Bool) -> Self {
        adjustsFontSizeToFitWidth = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func allowsDefaultTighteningForTruncation(_ value: Bool) -> Self {
        allowsDefaultTighteningForTruncation = value
        return self
    }

    @discardableResult
    public func baselineAdjustment(_ value: UIBaselineAdjustment) -> Self {
        baselineAdjustment = value
        return self
    }

    @discardableResult
    public func minimumScaleFactor(_ value: CGFloat) -> Self {
        minimumScaleFactor = value
        return self
    }

    @discardableResult
    public func numberOfLines(_ value: Int) -> Self {
        numberOfLines = value
        return self
    }

    @discardableResult
    public func highlightedTextColor(_ value: UIColor?) -> Self {
        highlightedTextColor = value
        return self
    }

    @discardableResult
    public func isHighlighted(_ value: Bool) -> Self {
        isHighlighted = value
        return self
    }

    @discardableResult
    public func shadowColor(_ value: UIColor?) -> Self {
        shadowColor = value
        return self
    }

    @discardableResult
    public func shadowOffset(_ value: CGSize) -> Self {
        shadowOffset = value
        return self
    }

    @discardableResult
    public func preferredMaxLayoutWidth(_ value: CGFloat) -> Self {
        preferredMaxLayoutWidth = value
        return self
    }
}
