//
//  UITextInput.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UITextInput {
    @discardableResult
    public func selectedTextRange(_ value: UITextRange?) -> Self {
        return addAttributes(key: "selectedTextRange", value: value) {
            $0.selectedTextRange = value
        }
    }

    @discardableResult
    public func markedTextStyle(_ value: [AnyHashable: Any]?) -> Self {
        return addAttributes(key: "markedTextStyle", value: value) {
            $0.markedTextStyle = value
        }
    }

    @discardableResult
    public func inputDelegate(_ value: UITextInputDelegate?) -> Self {
        return addAttributes(key: "inputDelegate", value: value) {
            $0.inputDelegate = value
        }
    }
}
