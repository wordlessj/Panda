//
//  UITabBarController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UITabBarController {
    @discardableResult
    public func viewControllers(_ value: [UIViewController]?) -> PandaChain {
        object.viewControllers = value
        return self
    }

    @discardableResult
    public func selectedViewController(_ value: UIViewController?) -> PandaChain {
        object.selectedViewController = value
        return self
    }

    @discardableResult
    public func selectedIndex(_ value: Int) -> PandaChain {
        object.selectedIndex = value
        return self
    }

    @discardableResult
    public func customizableViewControllers(_ value: [UIViewController]?) -> PandaChain {
        object.customizableViewControllers = value
        return self
    }

    @discardableResult
    public func delegate(_ value: UITabBarControllerDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }
}
