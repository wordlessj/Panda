//
//  UINavigationController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UINavigationController {
    @discardableResult
    public func viewControllers(_ value: [UIViewController]) -> PandaChain {
        object.viewControllers = value
        return self
    }

    @discardableResult
    public func navigationBarHidden(_ value: Bool) -> PandaChain {
        object.isNavigationBarHidden = value
        return self
    }

    @discardableResult
    public func toolbarHidden(_ value: Bool) -> PandaChain {
        object.isToolbarHidden = value
        return self
    }

    @discardableResult
    public func delegate(_ value: UINavigationControllerDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func hidesBarsWhenKeyboardAppears(_ value: Bool) -> PandaChain {
        object.hidesBarsWhenKeyboardAppears = value
        return self
    }

    @discardableResult
    public func hidesBarsOnSwipe(_ value: Bool) -> PandaChain {
        object.hidesBarsOnSwipe = value
        return self
    }

    @discardableResult
    public func hidesBarsWhenVerticallyCompact(_ value: Bool) -> PandaChain {
        object.hidesBarsWhenVerticallyCompact = value
        return self
    }

    @discardableResult
    public func hidesBarsOnTap(_ value: Bool) -> PandaChain {
        object.hidesBarsOnTap = value
        return self
    }

    @discardableResult
    public func viewControllers(_ viewControllers: [UIViewController], animated: Bool) -> PandaChain {
        object.setViewControllers(viewControllers, animated: animated)
        return self
    }

    @discardableResult
    public func navigationBarHidden(_ hidden: Bool, animated: Bool) -> PandaChain {
        object.setNavigationBarHidden(hidden, animated: animated)
        return self
    }

    @discardableResult
    public func toolbarHidden(_ hidden: Bool, animated: Bool) -> PandaChain {
        object.setToolbarHidden(hidden, animated: animated)
        return self
    }
}
