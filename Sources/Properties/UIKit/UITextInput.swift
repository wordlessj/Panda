//
//  UITextInput.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UITextInput {
    @discardableResult
    public func selectedTextRange(_ value: UITextRange?) -> PandaChain {
        object.selectedTextRange = value
        return self
    }

    @discardableResult
    public func markedTextStyle(_ value: [NSAttributedString.Key : Any]?) -> PandaChain {
        object.markedTextStyle = value
        return self
    }

    @discardableResult
    public func inputDelegate(_ value: UITextInputDelegate?) -> PandaChain {
        object.inputDelegate = value
        return self
    }

    @discardableResult
    public func markedText(_ markedText: String?, selectedRange: NSRange) -> PandaChain {
        object.setMarkedText(markedText, selectedRange: selectedRange)
        return self
    }

    @discardableResult
    public func baseWritingDirection(_ writingDirection: UITextWritingDirection, for range: UITextRange) -> PandaChain {
        object.setBaseWritingDirection(writingDirection, for: range)
        return self
    }
}
