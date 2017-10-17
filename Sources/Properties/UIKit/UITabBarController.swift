//
//  UITabBarController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UITabBarController {
    @discardableResult
    public func viewControllers(_ value: [UIViewControllerConvertible]?) -> PandaChain {
        object.viewControllers = unboxArray(value)
        return self
    }

    @discardableResult
    public func selectedViewController(_ value: UIViewControllerConvertible?) -> PandaChain {
        object.selectedViewController = unbox(value)
        return self
    }

    @discardableResult
    public func selectedIndex(_ value: Int) -> PandaChain {
        object.selectedIndex = value
        return self
    }

    @discardableResult
    public func customizableViewControllers(_ value: [UIViewControllerConvertible]?) -> PandaChain {
        object.customizableViewControllers = unboxArray(value)
        return self
    }

    @discardableResult
    public func delegate(_ value: UITabBarControllerDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func viewControllers(_ viewControllers: [UIViewControllerConvertible]?, animated: Bool) -> PandaChain {
        object.setViewControllers(unboxArray(viewControllers), animated: animated)
        return self
    }
}
