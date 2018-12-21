//
//  UITextField.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UITextField {
    @discardableResult
    public func selectionAffinity(_ value: UITextStorageDirection) -> PandaChain {
        object.selectionAffinity = value
        return self
    }

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

    /// `textColor`
    @discardableResult
    public func color(_ value: UIColor?) -> PandaChain {
        object.textColor = value
        return self
    }

    @available(*, deprecated, renamed: "color()")
    @discardableResult
    public func textColor(_ value: UIColor?) -> PandaChain {
        object.textColor = value
        return self
    }

    /// `textAlignment`
    @discardableResult
    public func align(_ value: NSTextAlignment) -> PandaChain {
        object.textAlignment = value
        return self
    }

    @available(*, deprecated, renamed: "align()")
    @discardableResult
    public func textAlignment(_ value: NSTextAlignment) -> PandaChain {
        object.textAlignment = value
        return self
    }

    @discardableResult
    public func borderStyle(_ value: UITextField.BorderStyle) -> PandaChain {
        object.borderStyle = value
        return self
    }

    /// `defaultTextAttributes`
    @discardableResult
    public func defaultAttributes(_ value: [String: Any]) -> PandaChain {
        object.defaultTextAttributes = convertToNSAttributedStringKeyDictionary(value)
        return self
    }

    @available(*, deprecated, renamed: "defaultAttributes()")
    @discardableResult
    public func defaultTextAttributes(_ value: [String: Any]) -> PandaChain {
        object.defaultTextAttributes = convertToNSAttributedStringKeyDictionary(value)
        return self
    }

    @discardableResult
    public func placeholder(_ value: String?) -> PandaChain {
        object.placeholder = value
        return self
    }

    @discardableResult
    public func attributedPlaceholder(_ value: NSAttributedString?) -> PandaChain {
        object.attributedPlaceholder = value
        return self
    }

    @discardableResult
    public func clearsOnBeginEditing(_ value: Bool) -> PandaChain {
        object.clearsOnBeginEditing = value
        return self
    }

    /// `adjustsFontSizeToFitWidth`
    @discardableResult
    public func adjustsFontSize(_ value: Bool) -> PandaChain {
        object.adjustsFontSizeToFitWidth = value
        return self
    }

    @available(*, deprecated, renamed: "adjustsFontSize()")
    @discardableResult
    public func adjustsFontSizeToFitWidth(_ value: Bool) -> PandaChain {
        object.adjustsFontSizeToFitWidth = value
        return self
    }

    /// `minimumFontSize`
    @discardableResult
    public func minFontSize(_ value: CGFloat) -> PandaChain {
        object.minimumFontSize = value
        return self
    }

    @available(*, deprecated, renamed: "minFontSize()")
    @discardableResult
    public func minimumFontSize(_ value: CGFloat) -> PandaChain {
        object.minimumFontSize = value
        return self
    }

    @discardableResult
    public func delegate(_ value: UITextFieldDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func background(_ value: UIImage?) -> PandaChain {
        object.background = value
        return self
    }

    @discardableResult
    public func disabledBackground(_ value: UIImage?) -> PandaChain {
        object.disabledBackground = value
        return self
    }

    /// `allowsEditingTextAttributes`
    @discardableResult
    public func attributesEditable(_ value: Bool) -> PandaChain {
        object.allowsEditingTextAttributes = value
        return self
    }

    @available(*, deprecated, renamed: "attributesEditable()")
    @discardableResult
    public func allowsEditingTextAttributes(_ value: Bool) -> PandaChain {
        object.allowsEditingTextAttributes = value
        return self
    }

    @discardableResult
    public func typingAttributes(_ value: [String: Any]?) -> PandaChain {
        object.typingAttributes = convertToOptionalNSAttributedStringKeyDictionary(value)
        return self
    }

    @discardableResult
    public func clearButtonMode(_ value: UITextField.ViewMode) -> PandaChain {
        object.clearButtonMode = value
        return self
    }

    @discardableResult
    public func leftView(_ value: UIViewConvertible?) -> PandaChain {
        object.leftView = unbox(value)
        return self
    }

    @discardableResult
    public func leftViewMode(_ value: UITextField.ViewMode) -> PandaChain {
        object.leftViewMode = value
        return self
    }

    @discardableResult
    public func rightView(_ value: UIViewConvertible?) -> PandaChain {
        object.rightView = unbox(value)
        return self
    }

    @discardableResult
    public func rightViewMode(_ value: UITextField.ViewMode) -> PandaChain {
        object.rightViewMode = value
        return self
    }

    @discardableResult
    public func inputView(_ value: UIViewConvertible?) -> PandaChain {
        object.inputView = unbox(value)
        return self
    }

    @discardableResult
    public func inputAccessoryView(_ value: UIViewConvertible?) -> PandaChain {
        object.inputAccessoryView = unbox(value)
        return self
    }

    @discardableResult
    public func clearsOnInsertion(_ value: Bool) -> PandaChain {
        object.clearsOnInsertion = value
        return self
    }

    @discardableResult
    public func autocapitalizationType(_ value: UITextAutocapitalizationType) -> PandaChain {
        object.autocapitalizationType = value
        return self
    }

    @discardableResult
    public func autocorrectionType(_ value: UITextAutocorrectionType) -> PandaChain {
        object.autocorrectionType = value
        return self
    }

    @discardableResult
    public func spellCheckingType(_ value: UITextSpellCheckingType) -> PandaChain {
        object.spellCheckingType = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func smartQuotesType(_ value: UITextSmartQuotesType) -> PandaChain {
        object.smartQuotesType = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func smartDashesType(_ value: UITextSmartDashesType) -> PandaChain {
        object.smartDashesType = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func smartInsertDeleteType(_ value: UITextSmartInsertDeleteType) -> PandaChain {
        object.smartInsertDeleteType = value
        return self
    }

    @discardableResult
    public func keyboardType(_ value: UIKeyboardType) -> PandaChain {
        object.keyboardType = value
        return self
    }

    @discardableResult
    public func keyboardAppearance(_ value: UIKeyboardAppearance) -> PandaChain {
        object.keyboardAppearance = value
        return self
    }

    @discardableResult
    public func returnKeyType(_ value: UIReturnKeyType) -> PandaChain {
        object.returnKeyType = value
        return self
    }

    @discardableResult
    public func enablesReturnKeyAutomatically(_ value: Bool) -> PandaChain {
        object.enablesReturnKeyAutomatically = value
        return self
    }

    @discardableResult
    public func secureTextEntry(_ value: Bool) -> PandaChain {
        object.isSecureTextEntry = value
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func textContentType(_ value: UITextContentType) -> PandaChain {
        object.textContentType = value
        return self
    }
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToNSAttributedStringKeyDictionary(_ input: [String: Any]) -> [NSAttributedString.Key: Any] {
	return Dictionary(uniqueKeysWithValues: input.map { key, value in (NSAttributedString.Key(rawValue: key), value)})
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToOptionalNSAttributedStringKeyDictionary(_ input: [String: Any]?) -> [NSAttributedString.Key: Any]? {
	guard let input = input else { return nil }
	return Dictionary(uniqueKeysWithValues: input.map { key, value in (NSAttributedString.Key(rawValue: key), value)})
}
