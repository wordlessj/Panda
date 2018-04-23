//
//  UILabel.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UILabel {
    @discardableResult
    public func text(_ value: String?) -> Self {
        return addAttributes(key: "text", value: value) {
            $0.text = value
            $0.invalidateLayout()
        }
    }

    /// `textColor`
    @discardableResult
    public func color(_ value: UIColor?) -> Self {
        return addAttributes(key: "textColor", value: value) {
            $0.textColor = value
        }
    }

    @available(*, deprecated, renamed: "color()")
    @discardableResult
    public func textColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "textColor", value: value) {
            $0.textColor = value
        }
    }

    @discardableResult
    public func shadowColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "shadowColor", value: value) {
            $0.shadowColor = value
        }
    }

    @discardableResult
    public func shadowOffset(_ value: CGSize) -> Self {
        return addAttributes(key: "shadowOffset", value: value) {
            $0.shadowOffset = value
        }
    }

    /// `textAlignment`
    @discardableResult
    public func align(_ value: NSTextAlignment) -> Self {
        return addAttributes(key: "textAlignment", value: value) {
            $0.textAlignment = value
        }
    }

    @available(*, deprecated, renamed: "align()")
    @discardableResult
    public func textAlignment(_ value: NSTextAlignment) -> Self {
        return addAttributes(key: "textAlignment", value: value) {
            $0.textAlignment = value
        }
    }

    /// `lineBreakMode`
    @discardableResult
    public func lineBreak(_ value: NSLineBreakMode) -> Self {
        return addAttributes(key: "lineBreakMode", value: value) {
            $0.lineBreakMode = value
        }
    }

    @available(*, deprecated, renamed: "lineBreak()")
    @discardableResult
    public func lineBreakMode(_ value: NSLineBreakMode) -> Self {
        return addAttributes(key: "lineBreakMode", value: value) {
            $0.lineBreakMode = value
        }
    }

    @discardableResult
    public func attributedText(_ value: NSAttributedString?) -> Self {
        return addAttributes(key: "attributedText", value: value) {
            $0.attributedText = value
            $0.invalidateLayout()
        }
    }

    /// `highlightedTextColor`
    @discardableResult
    public func highlightedColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "highlightedTextColor", value: value) {
            $0.highlightedTextColor = value
        }
    }

    @available(*, deprecated, renamed: "highlightedColor()")
    @discardableResult
    public func highlightedTextColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "highlightedTextColor", value: value) {
            $0.highlightedTextColor = value
        }
    }

    @discardableResult
    public func highlighted(_ value: Bool) -> Self {
        return addAttributes(key: "isHighlighted", value: value) {
            $0.isHighlighted = value
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
    public func enabled(_ value: Bool) -> Self {
        return addAttributes(key: "isEnabled", value: value) {
            $0.isEnabled = value
        }
    }

    /// `numberOfLines`
    @discardableResult
    public func lines(_ value: Int) -> Self {
        return addAttributes(key: "numberOfLines", value: value) {
            $0.numberOfLines = value
            $0.invalidateLayout()
        }
    }

    @available(*, deprecated, renamed: "lines()")
    @discardableResult
    public func numberOfLines(_ value: Int) -> Self {
        return addAttributes(key: "numberOfLines", value: value) {
            $0.numberOfLines = value
            $0.invalidateLayout()
        }
    }

    /// `adjustsFontSizeToFitWidth`
    @discardableResult
    public func adjustsFontSize(_ value: Bool) -> Self {
        return addAttributes(key: "adjustsFontSizeToFitWidth", value: value) {
            $0.adjustsFontSizeToFitWidth = value
        }
    }

    @available(*, deprecated, renamed: "adjustsFontSize()")
    @discardableResult
    public func adjustsFontSizeToFitWidth(_ value: Bool) -> Self {
        return addAttributes(key: "adjustsFontSizeToFitWidth", value: value) {
            $0.adjustsFontSizeToFitWidth = value
        }
    }

    /// `baselineAdjustment`
    @discardableResult
    public func baselineAdjust(_ value: UIBaselineAdjustment) -> Self {
        return addAttributes(key: "baselineAdjustment", value: value) {
            $0.baselineAdjustment = value
        }
    }

    @available(*, deprecated, renamed: "baselineAdjust()")
    @discardableResult
    public func baselineAdjustment(_ value: UIBaselineAdjustment) -> Self {
        return addAttributes(key: "baselineAdjustment", value: value) {
            $0.baselineAdjustment = value
        }
    }

    /// `minimumScaleFactor`
    @discardableResult
    public func minScale(_ value: CGFloat) -> Self {
        return addAttributes(key: "minimumScaleFactor", value: value) {
            $0.minimumScaleFactor = value
        }
    }

    @available(*, deprecated, renamed: "minScale()")
    @discardableResult
    public func minimumScaleFactor(_ value: CGFloat) -> Self {
        return addAttributes(key: "minimumScaleFactor", value: value) {
            $0.minimumScaleFactor = value
        }
    }

    /// `allowsDefaultTighteningForTruncation`
    @discardableResult
    public func tightenable(_ value: Bool) -> Self {
        return addAttributes(key: "allowsDefaultTighteningForTruncation", value: value) {
            $0.allowsDefaultTighteningForTruncation = value
        }
    }

    @available(*, deprecated, renamed: "tightenable()")
    @discardableResult
    public func allowsDefaultTighteningForTruncation(_ value: Bool) -> Self {
        return addAttributes(key: "allowsDefaultTighteningForTruncation", value: value) {
            $0.allowsDefaultTighteningForTruncation = value
        }
    }

    /// `preferredMaxLayoutWidth`
    @discardableResult
    public func maxWidth(_ value: CGFloat) -> Self {
        return addAttributes(key: "preferredMaxLayoutWidth", value: value) {
            $0.preferredMaxLayoutWidth = value
        }
    }

    @available(*, deprecated, renamed: "maxWidth()")
    @discardableResult
    public func preferredMaxLayoutWidth(_ value: CGFloat) -> Self {
        return addAttributes(key: "preferredMaxLayoutWidth", value: value) {
            $0.preferredMaxLayoutWidth = value
        }
    }
}
