//
//  UIWindow.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIWindow {
    @discardableResult
    public func screen(_ value: UIScreenConvertible) -> PandaChain {
        object.screen = unbox(value)
        return self
    }

    /// `windowLevel`
    @discardableResult
    public func level(_ value: UIWindowLevel) -> PandaChain {
        object.windowLevel = value
        return self
    }

    @available(*, deprecated, renamed: "level()")
    @discardableResult
    public func windowLevel(_ value: UIWindowLevel) -> PandaChain {
        object.windowLevel = value
        return self
    }

    @discardableResult
    public func rootViewController(_ value: UIViewControllerConvertible?) -> PandaChain {
        object.rootViewController = unbox(value)
        return self
    }
}
