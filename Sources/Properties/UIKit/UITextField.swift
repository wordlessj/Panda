//
//  UITextField.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UITextField {
    @discardableResult
    public func selectionAffinity(_ value: UITextStorageDirection) -> Self {
        return addAttributes(key: "selectionAffinity", value: value) {
            $0.selectionAffinity = value
        }
    }

    @discardableResult
    public func text(_ value: String?) -> Self {
        return addAttributes(key: "text", value: value) {
            $0.text = value
        }
    }

    @discardableResult
    public func attributedText(_ value: NSAttributedString?) -> Self {
        return addAttributes(key: "attributedText", value: value) {
            $0.attributedText = value
        }
    }

    @discardableResult
    public func textColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "textColor", value: value) {
            $0.textColor = value
        }
    }

    @discardableResult
    public func textAlignment(_ value: NSTextAlignment) -> Self {
        return addAttributes(key: "textAlignment", value: value) {
            $0.textAlignment = value
        }
    }

    @discardableResult
    public func borderStyle(_ value: UITextBorderStyle) -> Self {
        return addAttributes(key: "borderStyle", value: value) {
            $0.borderStyle = value
        }
    }

    @discardableResult
    public func defaultTextAttributes(_ value: [String: Any]) -> Self {
        return addAttributes(key: "defaultTextAttributes", value: value) {
            $0.defaultTextAttributes = value
        }
    }

    @discardableResult
    public func placeholder(_ value: String?) -> Self {
        return addAttributes(key: "placeholder", value: value) {
            $0.placeholder = value
        }
    }

    @discardableResult
    public func attributedPlaceholder(_ value: NSAttributedString?) -> Self {
        return addAttributes(key: "attributedPlaceholder", value: value) {
            $0.attributedPlaceholder = value
        }
    }

    @discardableResult
    public func clearsOnBeginEditing(_ value: Bool) -> Self {
        return addAttributes(key: "clearsOnBeginEditing", value: value) {
            $0.clearsOnBeginEditing = value
        }
    }

    @discardableResult
    public func adjustsFontSizeToFitWidth(_ value: Bool) -> Self {
        return addAttributes(key: "adjustsFontSizeToFitWidth", value: value) {
            $0.adjustsFontSizeToFitWidth = value
        }
    }

    @discardableResult
    public func minimumFontSize(_ value: CGFloat) -> Self {
        return addAttributes(key: "minimumFontSize", value: value) {
            $0.minimumFontSize = value
        }
    }

    @discardableResult
    public func delegate(_ value: UITextFieldDelegate?) -> Self {
        return addAttributes(key: "delegate", value: value) {
            $0.delegate = value
        }
    }

    @discardableResult
    public func background(_ value: UIImage?) -> Self {
        return addAttributes(key: "background", value: value) {
            $0.background = value
        }
    }

    @discardableResult
    public func disabledBackground(_ value: UIImage?) -> Self {
        return addAttributes(key: "disabledBackground", value: value) {
            $0.disabledBackground = value
        }
    }

    @discardableResult
    public func allowsEditingTextAttributes(_ value: Bool) -> Self {
        return addAttributes(key: "allowsEditingTextAttributes", value: value) {
            $0.allowsEditingTextAttributes = value
        }
    }

    @discardableResult
    public func typingAttributes(_ value: [String: Any]?) -> Self {
        return addAttributes(key: "typingAttributes", value: value) {
            $0.typingAttributes = value
        }
    }

    @discardableResult
    public func clearButtonMode(_ value: UITextFieldViewMode) -> Self {
        return addAttributes(key: "clearButtonMode", value: value) {
            $0.clearButtonMode = value
        }
    }

    @discardableResult
    public func leftView(_ value: UIView?) -> Self {
        return addAttributes(key: "leftView", value: value) {
            $0.leftView = value
        }
    }

    @discardableResult
    public func leftViewMode(_ value: UITextFieldViewMode) -> Self {
        return addAttributes(key: "leftViewMode", value: value) {
            $0.leftViewMode = value
        }
    }

    @discardableResult
    public func rightView(_ value: UIView?) -> Self {
        return addAttributes(key: "rightView", value: value) {
            $0.rightView = value
        }
    }

    @discardableResult
    public func rightViewMode(_ value: UITextFieldViewMode) -> Self {
        return addAttributes(key: "rightViewMode", value: value) {
            $0.rightViewMode = value
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
}
