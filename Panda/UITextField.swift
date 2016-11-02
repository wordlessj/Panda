//
//  UITextField.swift
//  Panda
//
//  Created by Javier on 11/1/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import UIKit

extension UITextField {
    @discardableResult
    public func text(_ value: String?) -> Self {
        text = value
        return self
    }

    @discardableResult
    public func attributedText(_ value: NSAttributedString?) -> Self {
        attributedText = value
        return self
    }

    @discardableResult
    public func placeholder(_ value: String?) -> Self {
        placeholder = value
        return self
    }

    @discardableResult
    public func attributedPlaceholder(_ value: NSAttributedString?) -> Self {
        attributedPlaceholder = value
        return self
    }

    @discardableResult
    public func defaultTextAttributes(_ value: [String: Any]) -> Self {
        defaultTextAttributes = value
        return self
    }

    @discardableResult
    public func font(_ value: UIFont?) -> Self {
        font = value
        return self
    }

    @discardableResult
    public func textColor(_ value: UIColor?) -> Self {
        textColor = value
        return self
    }

    @discardableResult
    public func textAlignment(_ value: NSTextAlignment) -> Self {
        textAlignment = value
        return self
    }

    @discardableResult
    public func typingAttributes(_ value: [String: Any]?) -> Self {
        typingAttributes = value
        return self
    }

    @discardableResult
    public func adjustsFontSizeToFitWidth(_ value: Bool) -> Self {
        adjustsFontSizeToFitWidth = value
        return self
    }

    @discardableResult
    public func minimumFontSize(_ value: CGFloat) -> Self {
        minimumFontSize = value
        return self
    }

    @discardableResult
    public func clearsOnBeginEditing(_ value: Bool) -> Self {
        clearsOnBeginEditing = value
        return self
    }

    @discardableResult
    public func clearsOnInsertion(_ value: Bool) -> Self {
        clearsOnInsertion = value
        return self
    }

    @discardableResult
    public func allowsEditingTextAttributes(_ value: Bool) -> Self {
        allowsEditingTextAttributes = value
        return self
    }

    @discardableResult
    public func borderStyle(_ value: UITextBorderStyle) -> Self {
        borderStyle = value
        return self
    }

    @discardableResult
    public func background(_ value: UIImage?) -> Self {
        background = value
        return self
    }

    @discardableResult
    public func disabledBackground(_ value: UIImage?) -> Self {
        disabledBackground = value
        return self
    }

    @discardableResult
    public func clearButtonMode(_ value: UITextFieldViewMode) -> Self {
        clearButtonMode = value
        return self
    }

    @discardableResult
    public func leftView(_ value: UIView?) -> Self {
        leftView = value
        return self
    }

    @discardableResult
    public func leftViewMode(_ value: UITextFieldViewMode) -> Self {
        leftViewMode = value
        return self
    }

    @discardableResult
    public func rightView(_ value: UIView?) -> Self {
        rightView = value
        return self
    }

    @discardableResult
    public func rightViewMode(_ value: UITextFieldViewMode) -> Self {
        rightViewMode = value
        return self
    }

    @discardableResult
    public func delegate(_ value: UITextFieldDelegate?) -> Self {
        delegate = value
        return self
    }

    @discardableResult
    public func inputView(_ value: UIView?) -> Self {
        inputView = value
        return self
    }

    @discardableResult
    public func inputAccessoryView(_ value: UIView?) -> Self {
        inputAccessoryView = value
        return self
    }
}
