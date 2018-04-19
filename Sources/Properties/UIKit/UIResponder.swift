//
//  UIResponder.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UIResponder {
    @discardableResult
    public func userActivity(_ value: NSUserActivity?) -> Self {
        return addAttributes(key: "userActivity", value: value) {
            $0.userActivity = value
        }
    }
}
