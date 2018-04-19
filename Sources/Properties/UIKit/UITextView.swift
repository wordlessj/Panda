//
//  UITextView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UITextView {
    @discardableResult
    public func selectionAffinity(_ value: UITextStorageDirection) -> Self {
        return addAttributes(key: "selectionAffinity", value: value) {
            $0.selectionAffinity = value
        }
    }

    @discardableResult
    public func autocapitalizationType(_ value: UITextAutocapitalizationType) -> Self {
        return addAttributes(key: "autocapitalizationType", value: value) {
            $0.autocapitalizationType = value
        }
    }

    @discardableResult
    public func autocorrectionType(_ value: UITextAutocorrectionType) -> Self {
        return addAttributes(key: "autocorrectionType", value: value) {
            $0.autocorrectionType = value
        }
    }

    @discardableResult
    public func spellCheckingType(_ value: UITextSpellCheckingType) -> Self {
        return addAttributes(key: "spellCheckingType", value: value) {
            $0.spellCheckingType = value
        }
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func smartQuotesType(_ value: UITextSmartQuotesType) -> Self {
        return addAttributes(key: "smartQuotesType", value: value) {
            $0.smartQuotesType = value
        }
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func smartDashesType(_ value: UITextSmartDashesType) -> Self {
        return addAttributes(key: "smartDashesType", value: value) {
            $0.smartDashesType = value
        }
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func smartInsertDeleteType(_ value: UITextSmartInsertDeleteType) -> Self {
        return addAttributes(key: "smartInsertDeleteType", value: value) {
            $0.smartInsertDeleteType = value
        }
    }

    @discardableResult
    public func keyboardType(_ value: UIKeyboardType) -> Self {
        return addAttributes(key: "keyboardType", value: value) {
            $0.keyboardType = value
        }
    }

    @discardableResult
    public func keyboardAppearance(_ value: UIKeyboardAppearance) -> Self {
        return addAttributes(key: "keyboardAppearance", value: value) {
            $0.keyboardAppearance = value
        }
    }

    @discardableResult
    public func returnKeyType(_ value: UIReturnKeyType) -> Self {
        return addAttributes(key: "returnKeyType", value: value) {
            $0.returnKeyType = value
        }
    }

    @discardableResult
    public func enablesReturnKeyAutomatically(_ value: Bool) -> Self {
        return addAttributes(key: "enablesReturnKeyAutomatically", value: value) {
            $0.enablesReturnKeyAutomatically = value
        }
    }

    @discardableResult
    public func secureTextEntry(_ value: Bool) -> Self {
        return addAttributes(key: "isSecureTextEntry", value: value) {
            $0.isSecureTextEntry = value
        }
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func textContentType(_ value: UITextContentType) -> Self {
        return addAttributes(key: "textContentType", value: value) {
            $0.textContentType = value
        }
    }

    @discardableResult
    public func delegate(_ value: UITextViewDelegate?) -> Self {
        return addAttributes(key: "delegate", value: value) {
            $0.delegate = value
        }
    }

    @discardableResult
    public func text(_ value: String?) -> Self {
        return addAttributes(key: "text", value: value) {
            $0.text = value
        }
    }

    /// `textColor`
    @discardableResult
    public func color(_ value: UIColor?) -> Self {
        return addAttributes(key: "textColor", value: value) {
            $0.textColor = value
        }
    }

    @available(*, deprecated, renamed: "color()")
    @discardableResult
    public func textColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "textColor", value: value) {
            $0.textColor = value
        }
    }

    /// `textAlignment`
    @discardableResult
    public func align(_ value: NSTextAlignment) -> Self {
        return addAttributes(key: "textAlignment", value: value) {
            $0.textAlignment = value
        }
    }

    @available(*, deprecated, renamed: "align()")
    @discardableResult
    public func textAlignment(_ value: NSTextAlignment) -> Self {
        return addAttributes(key: "textAlignment", value: value) {
            $0.textAlignment = value
        }
    }

    @discardableResult
    public func selectedRange(_ value: NSRange) -> Self {
        return addAttributes(key: "selectedRange", value: value) {
            $0.selectedRange = value
        }
    }

    @discardableResult
    public func editable(_ value: Bool) -> Self {
        return addAttributes(key: "isEditable", value: value) {
            $0.isEditable = value
        }
    }

    @discardableResult
    public func selectable(_ value: Bool) -> Self {
        return addAttributes(key: "isSelectable", value: value) {
            $0.isSelectable = value
        }
    }

    @discardableResult
    public func dataDetectorTypes(_ value: UIDataDetectorTypes) -> Self {
        return addAttributes(key: "dataDetectorTypes", value: value) {
            $0.dataDetectorTypes = value
        }
    }

    /// `allowsEditingTextAttributes`
    @discardableResult
    public func attributesEditable(_ value: Bool) -> Self {
        return addAttributes(key: "allowsEditingTextAttributes", value: value) {
            $0.allowsEditingTextAttributes = value
        }
    }

    @available(*, deprecated, renamed: "attributesEditable()")
    @discardableResult
    public func allowsEditingTextAttributes(_ value: Bool) -> Self {
        return addAttributes(key: "allowsEditingTextAttributes", value: value) {
            $0.allowsEditingTextAttributes = value
        }
    }

    @discardableResult
    public func attributedText(_ value: NSAttributedString?) -> Self {
        return addAttributes(key: "attributedText", value: value) {
            $0.attributedText = value
        }
    }

    @discardableResult
    public func typingAttributes(_ value: [String: Any]) -> Self {
        return addAttributes(key: "typingAttributes", value: value) {
            $0.typingAttributes = value
        }
    }

    @discardableResult
    public func inputView(_ value: UIView?) -> Self {
        return addAttributes(key: "inputView", value: value) {
            $0.inputView = value
        }
    }

    @discardableResult
    public func inputAccessoryView(_ value: UIView?) -> Self {
        return addAttributes(key: "inputAccessoryView", value: value) {
            $0.inputAccessoryView = value
        }
    }

    @discardableResult
    public func clearsOnInsertion(_ value: Bool) -> Self {
        return addAttributes(key: "clearsOnInsertion", value: value) {
            $0.clearsOnInsertion = value
        }
    }

    /// `textContainerInset`
    @discardableResult
    public func containerInset(_ value: UIEdgeInsets) -> Self {
        return addAttributes(key: "textContainerInset", value: value) {
            $0.textContainerInset = value
        }
    }

    @available(*, deprecated, renamed: "containerInset()")
    @discardableResult
    public func textContainerInset(_ value: UIEdgeInsets) -> Self {
        return addAttributes(key: "textContainerInset", value: value) {
            $0.textContainerInset = value
        }
    }

    /// `linkTextAttributes`
    @discardableResult
    public func linkAttributes(_ value: [String: Any]?) -> Self {
        return addAttributes(key: "linkTextAttributes", value: value) {
            $0.linkTextAttributes = value
        }
    }

    @available(*, deprecated, renamed: "linkAttributes()")
    @discardableResult
    public func linkTextAttributes(_ value: [String: Any]?) -> Self {
        return addAttributes(key: "linkTextAttributes", value: value) {
            $0.linkTextAttributes = value
        }
    }
}
