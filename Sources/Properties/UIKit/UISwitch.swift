//
//  UISwitch.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UISwitch {
    /// `onTintColor`
    @discardableResult
    public func onTint(_ value: UIColor?) -> Self {
        return addAttributes(key: "onTintColor", value: value) {
            $0.onTintColor = value
        }
    }

    @available(*, deprecated, renamed: "onTint()")
    @discardableResult
    public func onTintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "onTintColor", value: value) {
            $0.onTintColor = value
        }
    }

    /// `tintColor`
    @discardableResult
    public func tint(_ value: UIColor?) -> Self {
        return addAttributes(key: "tintColor", value: value) {
            $0.tintColor = value
        }
    }

    @available(*, deprecated, renamed: "tint()")
    @discardableResult
    public func tintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "tintColor", value: value) {
            $0.tintColor = value
        }
    }

    /// `thumbTintColor`
    @discardableResult
    public func thumbTint(_ value: UIColor?) -> Self {
        return addAttributes(key: "thumbTintColor", value: value) {
            $0.thumbTintColor = value
        }
    }

    @available(*, deprecated, renamed: "thumbTint()")
    @discardableResult
    public func thumbTintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "thumbTintColor", value: value) {
            $0.thumbTintColor = value
        }
    }

    @discardableResult
    public func onImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "onImage", value: value) {
            $0.onImage = value
        }
    }

    @discardableResult
    public func offImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "offImage", value: value) {
            $0.offImage = value
        }
    }

    @discardableResult
    public func on(_ value: Bool) -> Self {
        return addAttributes(key: "isOn", value: value) {
            $0.isOn = value
        }
    }
}
