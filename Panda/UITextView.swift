//
//  UITextView.swift
//  Panda
//
//  Created by Javier on 11/1/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import UIKit

extension UITextView {
    @discardableResult
    public func text(_ value: String!) -> Self {
        text = value
        return self
    }

    @discardableResult
    public func attributedText(_ value: NSAttributedString!) -> Self {
        attributedText = value
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
    public func isEditable(_ value: Bool) -> Self {
        isEditable = value
        return self
    }

    @discardableResult
    public func allowsEditingTextAttributes(_ value: Bool) -> Self {
        allowsEditingTextAttributes = value
        return self
    }

    @discardableResult
    public func dataDetectorTypes(_ value: UIDataDetectorTypes) -> Self {
        dataDetectorTypes = value
        return self
    }

    @discardableResult
    public func textAlignment(_ value: NSTextAlignment) -> Self {
        textAlignment = value
        return self
    }

    @discardableResult
    public func typingAttributes(_ value: [String: Any]) -> Self {
        typingAttributes = value
        return self
    }

    @discardableResult
    public func linkTextAttributes(_ value: [String : Any]!) -> Self {
        linkTextAttributes = value
        return self
    }

    @discardableResult
    public func textContainerInset(_ value: UIEdgeInsets) -> Self {
        textContainerInset = value
        return self
    }

    @discardableResult
    public func selectedRange(_ value: NSRange) -> Self {
        selectedRange = value
        return self
    }

    @discardableResult
    public func clearsOnInsertion(_ value: Bool) -> Self {
        clearsOnInsertion = value
        return self
    }

    @discardableResult
    public func isSelectable(_ value: Bool) -> Self {
        isSelectable = value
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
