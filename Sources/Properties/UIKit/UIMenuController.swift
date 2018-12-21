//
//  UIMenuController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIMenuController {
    @discardableResult
    public func menuVisible(_ value: Bool) -> PandaChain {
        object.isMenuVisible = value
        return self
    }

    @discardableResult
    public func arrowDirection(_ value: UIMenuController.ArrowDirection) -> PandaChain {
        object.arrowDirection = value
        return self
    }

    @discardableResult
    public func menuItems(_ value: [UIMenuItemConvertible]?) -> PandaChain {
        object.menuItems = unboxArray(value)
        return self
    }

    @discardableResult
    public func menuVisible(_ menuVisible: Bool, animated: Bool) -> PandaChain {
        object.setMenuVisible(menuVisible, animated: animated)
        return self
    }

    @discardableResult
    public func targetRect(_ targetRect: CGRect, in targetView: UIView) -> PandaChain {
        object.setTargetRect(targetRect, in: targetView)
        return self
    }
}
