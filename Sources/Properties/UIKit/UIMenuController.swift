//
//  UIMenuController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIMenuController {
    @discardableResult
    public func isMenuVisible(_ value: Bool) -> PandaChain {
        object.isMenuVisible = value
        return self
    }

    @discardableResult
    public func arrowDirection(_ value: UIMenuControllerArrowDirection) -> PandaChain {
        object.arrowDirection = value
        return self
    }

    @discardableResult
    public func menuItems(_ value: [UIMenuItem]?) -> PandaChain {
        object.menuItems = value
        return self
    }
}
