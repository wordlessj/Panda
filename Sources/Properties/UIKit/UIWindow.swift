//
//  UIWindow.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIWindow {
    @discardableResult
    public func screen(_ value: UIScreen) -> PandaChain {
        object.screen = value
        return self
    }

    @discardableResult
    public func windowLevel(_ value: UIWindowLevel) -> PandaChain {
        object.windowLevel = value
        return self
    }

    @discardableResult
    public func rootViewController(_ value: UIViewController?) -> PandaChain {
        object.rootViewController = value
        return self
    }
}
