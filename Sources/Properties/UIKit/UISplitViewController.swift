//
//  UISplitViewController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UISplitViewController {
    @discardableResult
    public func viewControllers(_ value: [UIViewControllerConvertible]) -> PandaChain {
        object.viewControllers = unboxArray(value)
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
    public func preferredDisplayMode(_ value: UISplitViewController.DisplayMode) -> PandaChain {
        object.preferredDisplayMode = value
        return self
    }

    @discardableResult
    public func preferredPrimaryColumnWidthFraction(_ value: CGFloat) -> PandaChain {
        object.preferredPrimaryColumnWidthFraction = value
        return self
    }

    /// `minimumPrimaryColumnWidth`
    @discardableResult
    public func minPrimaryColumnWidth(_ value: CGFloat) -> PandaChain {
        object.minimumPrimaryColumnWidth = value
        return self
    }

    @available(*, deprecated, renamed: "minPrimaryColumnWidth()")
    @discardableResult
    public func minimumPrimaryColumnWidth(_ value: CGFloat) -> PandaChain {
        object.minimumPrimaryColumnWidth = value
        return self
    }

    /// `maximumPrimaryColumnWidth`
    @discardableResult
    public func maxPrimaryColumnWidth(_ value: CGFloat) -> PandaChain {
        object.maximumPrimaryColumnWidth = value
        return self
    }

    @available(*, deprecated, renamed: "maxPrimaryColumnWidth()")
    @discardableResult
    public func maximumPrimaryColumnWidth(_ value: CGFloat) -> PandaChain {
        object.maximumPrimaryColumnWidth = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func primaryEdge(_ value: UISplitViewController.PrimaryEdge) -> PandaChain {
        object.primaryEdge = value
        return self
    }
}
