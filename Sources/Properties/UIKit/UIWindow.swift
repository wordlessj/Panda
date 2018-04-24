//
//  UIWindow.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UIWindow {
    @discardableResult
    public func screen(_ value: UIScreen) -> Self {
        return addAttributes(key: "screen", value: value) {
            $0.screen = value
        }
    }

    @discardableResult
    public func windowLevel(_ value: UIWindowLevel) -> Self {
        return addAttributes(key: "windowLevel", value: value) {
            $0.windowLevel = value
        }
    }

    @discardableResult
    public func rootViewController(_ value: UIViewController?) -> Self {
        return addAttributes(key: "rootViewController", value: value) {
            $0.rootViewController = value
        }
    }
}
