//
//  UIViewController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIViewController {
    @discardableResult
    public func hidesBottomBarWhenPushed(_ value: Bool) -> PandaChain {
        object.hidesBottomBarWhenPushed = value
        return self
    }

    @discardableResult
    public func toolbarItems(_ value: [UIBarButtonItem]?) -> PandaChain {
        object.toolbarItems = value
        return self
    }

    @discardableResult
    public func modalInPopover(_ value: Bool) -> PandaChain {
        object.isModalInPopover = value
        return self
    }

    @discardableResult
    public func tabBarItem(_ value: UITabBarItem?) -> PandaChain {
        object.tabBarItem = value
        return self
    }

    @discardableResult
    public func view(_ value: UIView?) -> PandaChain {
        object.view = value
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
    public func editing(_ value: Bool) -> PandaChain {
        object.isEditing = value
        return self
    }

    /// `restorationIdentifier`
    @discardableResult
    public func restorationID(_ value: String?) -> PandaChain {
        object.restorationIdentifier = value
        return self
    }

    @available(*, deprecated, renamed: "restorationID()")
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

    @discardableResult
    public func toolbarItems(_ toolbarItems: [UIBarButtonItem]?, animated: Bool) -> PandaChain {
        object.setToolbarItems(toolbarItems, animated: animated)
        return self
    }

    @discardableResult
    public func editing(_ editing: Bool, animated: Bool) -> PandaChain {
        object.setEditing(editing, animated: animated)
        return self
    }

    @discardableResult
    public func overrideTraitCollection(_ collection: UITraitCollection?, forChildViewController childViewController: UIViewController) -> PandaChain {
        object.setOverrideTraitCollection(collection, forChildViewController: childViewController)
        return self
    }
}
