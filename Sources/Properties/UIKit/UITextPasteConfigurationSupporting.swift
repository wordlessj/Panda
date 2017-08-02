//
//  UITextPasteConfigurationSupporting.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 11.0, *)
extension PandaChain where Object: UITextPasteConfigurationSupporting {
    @discardableResult
    public func pasteDelegate(_ value: UITextPasteDelegate?) -> PandaChain {
        object.pasteDelegate = value
        return self
    }
}
