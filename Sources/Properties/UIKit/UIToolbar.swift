//
//  UIToolbar.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UIToolbar {
    @discardableResult
    public func barStyle(_ value: UIBarStyle) -> Self {
        return addAttributes(key: "barStyle", value: value) {
            $0.barStyle = value
        }
    }

    @discardableResult
    public func items(_ value: [UIBarButtonItem]?) -> Self {
        return addAttributes(key: "items", value: value) {
            $0.items = value
        }
    }

    @discardableResult
    public func translucent(_ value: Bool) -> Self {
        return addAttributes(key: "isTranslucent", value: value) {
            $0.isTranslucent = value
        }
    }

    @discardableResult
    public func tintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "tintColor", value: value) {
            $0.tintColor = value
        }
    }

    @discardableResult
    public func barTintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "barTintColor", value: value) {
            $0.barTintColor = value
        }
    }

    @discardableResult
    public func delegate(_ value: UIToolbarDelegate?) -> Self {
        return addAttributes(key: "delegate", value: value) {
            $0.delegate = value
        }
    }
}
