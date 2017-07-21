//
//  UISplitViewController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UISplitViewController {
    @discardableResult
    public func viewControllers(_ value: [UIViewController]) -> PandaChain {
        object.viewControllers = value
        return self
    }

    @discardableResult
    public func delegate(_ value: UISplitViewControllerDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func presentsWithGesture(_ value: Bool) -> PandaChain {
        object.presentsWithGesture = value
        return self
    }

    @discardableResult
    public func preferredDisplayMode(_ value: UISplitViewControllerDisplayMode) -> PandaChain {
        object.preferredDisplayMode = value
        return self
    }

    @discardableResult
    public func preferredPrimaryColumnWidthFraction(_ value: CGFloat) -> PandaChain {
        object.preferredPrimaryColumnWidthFraction = value
        return self
    }

    @discardableResult
    public func minimumPrimaryColumnWidth(_ value: CGFloat) -> PandaChain {
        object.minimumPrimaryColumnWidth = value
        return self
    }

    @discardableResult
    public func maximumPrimaryColumnWidth(_ value: CGFloat) -> PandaChain {
        object.maximumPrimaryColumnWidth = value
        return self
    }
}
