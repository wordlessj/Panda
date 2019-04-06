//
//  UISimpleTextPrintFormatter.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UISimpleTextPrintFormatter {
    @discardableResult
    public func text(_ value: String?) -> PandaChain {
        object.text = value
        return self
    }

    @discardableResult
    public func attributedText(_ value: NSAttributedString?) -> PandaChain {
        object.attributedText = value
        return self
    }

    @discardableResult
    public func color(_ value: UIColor?) -> PandaChain {
        object.color = value
        return self
    }

    @discardableResult
    public func textAlignment(_ value: NSTextAlignment) -> PandaChain {
        object.textAlignment = value
        return self
    }
}
