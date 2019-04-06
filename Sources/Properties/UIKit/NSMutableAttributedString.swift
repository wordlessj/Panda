//
//  NSMutableAttributedString.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: NSMutableAttributedString {
    @discardableResult
    public func attributes(_ attrs: [NSAttributedString.Key : Any]?, range: NSRange) -> PandaChain {
        object.setAttributes(attrs, range: range)
        return self
    }

    @discardableResult
    public func attributedString(_ attrString: NSAttributedString) -> PandaChain {
        object.setAttributedString(attrString)
        return self
    }
}
