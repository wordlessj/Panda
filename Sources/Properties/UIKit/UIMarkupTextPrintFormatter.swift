//
//  UIMarkupTextPrintFormatter.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIMarkupTextPrintFormatter {
    @discardableResult
    public func markupText(_ value: String?) -> PandaChain {
        object.markupText = value
        return self
    }
}
