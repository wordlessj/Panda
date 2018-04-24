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

    @discardableResult
    public func textAlignment(_ value: NSTextAlignment) -> Self {
        return addAttributes(key: "textAlignment", value: value) {
            $0.textAlignment = value
        }
    }

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

    @discardableResult
    public func numberOfLines(_ value: Int) -> Self {
        return addAttributes(key: "numberOfLines", value: value) {
            $0.numberOfLines = value
            $0.invalidateLayout()
        }
    }

    @discardableResult
    public func adjustsFontSizeToFitWidth(_ value: Bool) -> Self {
        return addAttributes(key: "adjustsFontSizeToFitWidth", value: value) {
            $0.adjustsFontSizeToFitWidth = value
        }
    }

    @discardableResult
    public func baselineAdjustment(_ value: UIBaselineAdjustment) -> Self {
        return addAttributes(key: "baselineAdjustment", value: value) {
            $0.baselineAdjustment = value
        }
    }

    @discardableResult
    public func minimumScaleFactor(_ value: CGFloat) -> Self {
        return addAttributes(key: "minimumScaleFactor", value: value) {
            $0.minimumScaleFactor = value
        }
    }

    @discardableResult
    public func allowsDefaultTighteningForTruncation(_ value: Bool) -> Self {
        return addAttributes(key: "allowsDefaultTighteningForTruncation", value: value) {
            $0.allowsDefaultTighteningForTruncation = value
        }
    }

    @discardableResult
    public func preferredMaxLayoutWidth(_ value: CGFloat) -> Self {
        return addAttributes(key: "preferredMaxLayoutWidth", value: value) {
            $0.preferredMaxLayoutWidth = value
        }
    }
}
