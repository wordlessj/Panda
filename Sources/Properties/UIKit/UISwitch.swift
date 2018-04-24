//
//  UISwitch.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UISwitch {
    @discardableResult
    public func onTintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "onTintColor", value: value) {
            $0.onTintColor = value
        }
    }

    @discardableResult
    public func tintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "tintColor", value: value) {
            $0.tintColor = value
        }
    }

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
