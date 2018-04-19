//
//  UIControl.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UIControl {
    @discardableResult
    public func enabled(_ value: Bool) -> Self {
        return addAttributes(key: "isEnabled", value: value) {
            $0.isEnabled = value
        }
    }

    @discardableResult
    public func selected(_ value: Bool) -> Self {
        return addAttributes(key: "isSelected", value: value) {
            $0.isSelected = value
        }
    }

    @discardableResult
    public func highlighted(_ value: Bool) -> Self {
        return addAttributes(key: "isHighlighted", value: value) {
            $0.isHighlighted = value
        }
    }

    /// `contentVerticalAlignment`
    @discardableResult
    public func verticalAlign(_ value: UIControlContentVerticalAlignment) -> Self {
        return addAttributes(key: "contentVerticalAlignment", value: value) {
            $0.contentVerticalAlignment = value
        }
    }

    @available(*, deprecated, renamed: "verticalAlign()")
    @discardableResult
    public func contentVerticalAlignment(_ value: UIControlContentVerticalAlignment) -> Self {
        return addAttributes(key: "contentVerticalAlignment", value: value) {
            $0.contentVerticalAlignment = value
        }
    }

    /// `contentHorizontalAlignment`
    @discardableResult
    public func horizontalAlign(_ value: UIControlContentHorizontalAlignment) -> Self {
        return addAttributes(key: "contentHorizontalAlignment", value: value) {
            $0.contentHorizontalAlignment = value
        }
    }

    @available(*, deprecated, renamed: "horizontalAlign()")
    @discardableResult
    public func contentHorizontalAlignment(_ value: UIControlContentHorizontalAlignment) -> Self {
        return addAttributes(key: "contentHorizontalAlignment", value: value) {
            $0.contentHorizontalAlignment = value
        }
    }
}
