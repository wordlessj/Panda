//
//  UIViewController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

public protocol UIViewControllerConvertible {}

extension UIViewController: UIViewControllerConvertible {}
extension PandaChain: UIViewControllerConvertible {}

extension PandaChain where Object: UIViewController {
    @discardableResult
    public func tabBarItem(_ value: UITabBarItemConvertible!) -> PandaChain {
        object.tabBarItem = unbox(value)
        return self
    }

    @discardableResult
    public func view(_ value: UIViewConvertible!) -> PandaChain {
        object.view = unbox(value)
        return self
    }

    @discardableResult
    public func title(_ value: String?) -> PandaChain {
        object.title = value
        return self
    }

    @discardableResult
    public func definesPresentationContext(_ value: Bool) -> PandaChain {
        object.definesPresentationContext = value
        return self
    }

    @discardableResult
    public func providesPresentationContextTransitionStyle(_ value: Bool) -> PandaChain {
        object.providesPresentationContextTransitionStyle = value
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func restoresFocusAfterTransition(_ value: Bool) -> PandaChain {
        object.restoresFocusAfterTransition = value
        return self
    }

    @discardableResult
    public func modalTransitionStyle(_ value: UIModalTransitionStyle) -> PandaChain {
        object.modalTransitionStyle = value
        return self
    }

    @discardableResult
    public func modalPresentationStyle(_ value: UIModalPresentationStyle) -> PandaChain {
        object.modalPresentationStyle = value
        return self
    }

    @discardableResult
    public func modalPresentationCapturesStatusBarAppearance(_ value: Bool) -> PandaChain {
        object.modalPresentationCapturesStatusBarAppearance = value
        return self
    }

    @discardableResult
    public func edgesForExtendedLayout(_ value: UIRectEdge) -> PandaChain {
        object.edgesForExtendedLayout = value
        return self
    }

    @discardableResult
    public func extendedLayoutIncludesOpaqueBars(_ value: Bool) -> PandaChain {
        object.extendedLayoutIncludesOpaqueBars = value
        return self
    }

    @available(iOS, introduced: 7.0, deprecated: 11.0)
    @discardableResult
    public func automaticallyAdjustsScrollViewInsets(_ value: Bool) -> PandaChain {
        object.automaticallyAdjustsScrollViewInsets = value
        return self
    }

    @discardableResult
    public func preferredContentSize(_ value: CGSize) -> PandaChain {
        object.preferredContentSize = value
        return self
    }

    @discardableResult
    public func isEditing(_ value: Bool) -> PandaChain {
        object.isEditing = value
        return self
    }

    @discardableResult
    public func restorationIdentifier(_ value: String?) -> PandaChain {
        object.restorationIdentifier = value
        return self
    }

    @discardableResult
    public func restorationClass(_ value: UIViewControllerRestoration.Type?) -> PandaChain {
        object.restorationClass = value
        return self
    }

    @discardableResult
    public func transitioningDelegate(_ value: UIViewControllerTransitioningDelegate?) -> PandaChain {
        object.transitioningDelegate = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func additionalSafeAreaInsets(_ value: UIEdgeInsets) -> PandaChain {
        object.additionalSafeAreaInsets = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func viewRespectsSystemMinimumLayoutMargins(_ value: Bool) -> PandaChain {
        object.viewRespectsSystemMinimumLayoutMargins = value
        return self
    }

    @discardableResult
    public func isModalInPopover(_ value: Bool) -> PandaChain {
        object.isModalInPopover = value
        return self
    }

    @discardableResult
    public func hidesBottomBarWhenPushed(_ value: Bool) -> PandaChain {
        object.hidesBottomBarWhenPushed = value
        return self
    }

    @discardableResult
    public func toolbarItems(_ value: [UIBarButtonItemConvertible]?) -> PandaChain {
        object.toolbarItems = unboxArray(value)
        return self
    }

    @discardableResult
    public func editing(_ editing: Bool, animated: Bool) -> PandaChain {
        object.setEditing(editing, animated: animated)
        return self
    }

    @discardableResult
    public func overrideTraitCollection(_ collection: UITraitCollection?, forChild childViewController: UIViewController) -> PandaChain {
        object.setOverrideTraitCollection(collection, forChild: childViewController)
        return self
    }

    @discardableResult
    public func toolbarItems(_ toolbarItems: [UIBarButtonItemConvertible]?, animated: Bool) -> PandaChain {
        object.setToolbarItems(unboxArray(toolbarItems), animated: animated)
        return self
    }
}
