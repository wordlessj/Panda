//
//  UITextPasteItem.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 11.0, *)
extension PandaChain where Object: UITextPasteItem {
    @discardableResult
    public func result(string: String) -> PandaChain {
        object.setResult(string: string)
        return self
    }

    @discardableResult
    public func result(attributedString string: NSAttributedString) -> PandaChain {
        object.setResult(attributedString: string)
        return self
    }

    @discardableResult
    public func result(attachment textAttachment: NSTextAttachmentConvertible) -> PandaChain {
        object.setResult(attachment: unbox(textAttachment))
        return self
    }
}
