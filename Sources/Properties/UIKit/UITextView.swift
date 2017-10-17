//
//  UITextView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UITextView {
    @discardableResult
    public func selectionAffinity(_ value: UITextStorageDirection) -> PandaChain {
        object.selectionAffinity = value
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

    @discardableResult
    public func delegate(_ value: UITextViewDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func text(_ value: String?) -> PandaChain {
        object.text = value
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
    public func selectedRange(_ value: NSRange) -> PandaChain {
        object.selectedRange = value
        return self
    }

    @discardableResult
    public func editable(_ value: Bool) -> PandaChain {
        object.isEditable = value
        return self
    }

    @discardableResult
    public func selectable(_ value: Bool) -> PandaChain {
        object.isSelectable = value
        return self
    }

    @discardableResult
    public func dataDetectorTypes(_ value: UIDataDetectorTypes) -> PandaChain {
        object.dataDetectorTypes = value
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
    public func attributedText(_ value: NSAttributedString?) -> PandaChain {
        object.attributedText = value
        return self
    }

    @discardableResult
    public func typingAttributes(_ value: [String: Any]) -> PandaChain {
        object.typingAttributes = value
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

    /// `textContainerInset`
    @discardableResult
    public func containerInset(_ value: UIEdgeInsets) -> PandaChain {
        object.textContainerInset = value
        return self
    }

    @available(*, deprecated, renamed: "containerInset()")
    @discardableResult
    public func textContainerInset(_ value: UIEdgeInsets) -> PandaChain {
        object.textContainerInset = value
        return self
    }

    /// `linkTextAttributes`
    @discardableResult
    public func linkAttributes(_ value: [String: Any]?) -> PandaChain {
        object.linkTextAttributes = value
        return self
    }

    @available(*, deprecated, renamed: "linkAttributes()")
    @discardableResult
    public func linkTextAttributes(_ value: [String: Any]?) -> PandaChain {
        object.linkTextAttributes = value
        return self
    }
}
