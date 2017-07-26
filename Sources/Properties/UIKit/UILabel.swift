//
//  UILabel.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UILabel {
    @discardableResult
    public func text(_ value: String?) -> PandaChain {
        object.text = value
        return self
    }

    /// `textColor`
    @discardableResult
    public func color(_ value: UIColor?) -> PandaChain {
        object.textColor = value
        return self
    }

    @available(*, deprecated, renamed: "color()")
    @discardableResult
    public func textColor(_ value: UIColor?) -> PandaChain {
        object.textColor = value
        return self
    }

    @discardableResult
    public func shadowColor(_ value: UIColor?) -> PandaChain {
        object.shadowColor = value
        return self
    }

    @discardableResult
    public func shadowOffset(_ value: CGSize) -> PandaChain {
        object.shadowOffset = value
        return self
    }

    /// `textAlignment`
    @discardableResult
    public func alignment(_ value: NSTextAlignment) -> PandaChain {
        object.textAlignment = value
        return self
    }

    @available(*, deprecated, renamed: "alignment()")
    @discardableResult
    public func textAlignment(_ value: NSTextAlignment) -> PandaChain {
        object.textAlignment = value
        return self
    }

    /// `lineBreakMode`
    @discardableResult
    public func lineBreak(_ value: NSLineBreakMode) -> PandaChain {
        object.lineBreakMode = value
        return self
    }

    @available(*, deprecated, renamed: "lineBreak()")
    @discardableResult
    public func lineBreakMode(_ value: NSLineBreakMode) -> PandaChain {
        object.lineBreakMode = value
        return self
    }

    @discardableResult
    public func attributedText(_ value: NSAttributedString?) -> PandaChain {
        object.attributedText = value
        return self
    }

    /// `highlightedTextColor`
    @discardableResult
    public func highlightedColor(_ value: UIColor?) -> PandaChain {
        object.highlightedTextColor = value
        return self
    }

    @available(*, deprecated, renamed: "highlightedColor()")
    @discardableResult
    public func highlightedTextColor(_ value: UIColor?) -> PandaChain {
        object.highlightedTextColor = value
        return self
    }

    @discardableResult
    public func highlighted(_ value: Bool) -> PandaChain {
        object.isHighlighted = value
        return self
    }

    /// `isUserInteractionEnabled`
    @discardableResult
    public func interactable(_ value: Bool) -> PandaChain {
        object.isUserInteractionEnabled = value
        return self
    }

    @available(*, deprecated, renamed: "interactable()")
    @discardableResult
    public func userInteractionEnabled(_ value: Bool) -> PandaChain {
        object.isUserInteractionEnabled = value
        return self
    }

    @discardableResult
    public func enabled(_ value: Bool) -> PandaChain {
        object.isEnabled = value
        return self
    }

    /// `numberOfLines`
    @discardableResult
    public func lines(_ value: Int) -> PandaChain {
        object.numberOfLines = value
        return self
    }

    @available(*, deprecated, renamed: "lines()")
    @discardableResult
    public func numberOfLines(_ value: Int) -> PandaChain {
        object.numberOfLines = value
        return self
    }

    /// `adjustsFontSizeToFitWidth`
    @discardableResult
    public func adjustsFontSize(_ value: Bool) -> PandaChain {
        object.adjustsFontSizeToFitWidth = value
        return self
    }

    @available(*, deprecated, renamed: "adjustsFontSize()")
    @discardableResult
    public func adjustsFontSizeToFitWidth(_ value: Bool) -> PandaChain {
        object.adjustsFontSizeToFitWidth = value
        return self
    }

    @discardableResult
    public func baselineAdjustment(_ value: UIBaselineAdjustment) -> PandaChain {
        object.baselineAdjustment = value
        return self
    }

    /// `minimumScaleFactor`
    @discardableResult
    public func minScale(_ value: CGFloat) -> PandaChain {
        object.minimumScaleFactor = value
        return self
    }

    @available(*, deprecated, renamed: "minScale()")
    @discardableResult
    public func minimumScaleFactor(_ value: CGFloat) -> PandaChain {
        object.minimumScaleFactor = value
        return self
    }

    /// `allowsDefaultTighteningForTruncation`
    @available(iOS 9.0, *)
    @discardableResult
    public func tightenable(_ value: Bool) -> PandaChain {
        object.allowsDefaultTighteningForTruncation = value
        return self
    }

    @available(*, deprecated, renamed: "tightenable()")
    @available(iOS 9.0, *)
    @discardableResult
    public func allowsDefaultTighteningForTruncation(_ value: Bool) -> PandaChain {
        object.allowsDefaultTighteningForTruncation = value
        return self
    }

    /// `preferredMaxLayoutWidth`
    @discardableResult
    public func maxWidth(_ value: CGFloat) -> PandaChain {
        object.preferredMaxLayoutWidth = value
        return self
    }

    @available(*, deprecated, renamed: "maxWidth()")
    @discardableResult
    public func preferredMaxLayoutWidth(_ value: CGFloat) -> PandaChain {
        object.preferredMaxLayoutWidth = value
        return self
    }
}
