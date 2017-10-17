//
//  UIMenuItem.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

public protocol UIMenuItemConvertible {}

extension UIMenuItem: UIMenuItemConvertible {}
extension PandaChain: UIMenuItemConvertible {}

extension PandaChain where Object: UIMenuItem {
    @discardableResult
    public func title(_ value: String) -> PandaChain {
        object.title = value
        return self
    }

    @discardableResult
    public func action(_ value: Selector) -> PandaChain {
        object.action = value
        return self
    }
}
