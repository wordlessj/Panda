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

    @discardableResult
    public func textColor(_ value: UIColor!) -> PandaChain {
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

    @discardableResult
    public func textAlignment(_ value: NSTextAlignment) -> PandaChain {
        object.textAlignment = value
        return self
    }

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

    @discardableResult
    public func highlightedTextColor(_ value: UIColor?) -> PandaChain {
        object.highlightedTextColor = value
        return self
    }

    @discardableResult
    public func isHighlighted(_ value: Bool) -> PandaChain {
        object.isHighlighted = value
        return self
    }

    @discardableResult
    public func isUserInteractionEnabled(_ value: Bool) -> PandaChain {
        object.isUserInteractionEnabled = value
        return self
    }

    @discardableResult
    public func isEnabled(_ value: Bool) -> PandaChain {
        object.isEnabled = value
        return self
    }

    @discardableResult
    public func numberOfLines(_ value: Int) -> PandaChain {
        object.numberOfLines = value
        return self
    }

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

    @discardableResult
    public func minimumScaleFactor(_ value: CGFloat) -> PandaChain {
        object.minimumScaleFactor = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func allowsDefaultTighteningForTruncation(_ value: Bool) -> PandaChain {
        object.allowsDefaultTighteningForTruncation = value
        return self
    }

    @discardableResult
    public func preferredMaxLayoutWidth(_ value: CGFloat) -> PandaChain {
        object.preferredMaxLayoutWidth = value
        return self
    }
}
