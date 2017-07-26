//
//  UIPopoverController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS, introduced: 3.2, deprecated: 9.0)
extension PandaChain where Object: UIPopoverController {
    @discardableResult
    public func delegate(_ value: UIPopoverControllerDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func contentViewController(_ value: UIViewController) -> PandaChain {
        object.contentViewController = value
        return self
    }

    @discardableResult
    public func contentSize(_ value: CGSize) -> PandaChain {
        object.contentSize = value
        return self
    }

    @discardableResult
    public func passthroughViews(_ value: [UIView]?) -> PandaChain {
        object.passthroughViews = value
        return self
    }

    /// `backgroundColor`
    @discardableResult
    public func background(_ value: UIColor?) -> PandaChain {
        object.backgroundColor = value
        return self
    }

    @available(*, deprecated, renamed: "background()")
    @discardableResult
    public func backgroundColor(_ value: UIColor?) -> PandaChain {
        object.backgroundColor = value
        return self
    }

    /// `layoutMargins`
    @discardableResult
    public func margins(_ value: UIEdgeInsets) -> PandaChain {
        object.layoutMargins = value
        return self
    }

    @available(*, deprecated, renamed: "margins()")
    @discardableResult
    public func layoutMargins(_ value: UIEdgeInsets) -> PandaChain {
        object.layoutMargins = value
        return self
    }

    /// `backgroundViewClass`
    @discardableResult
    public func backgroundClass(_ value: AnyClass?) -> PandaChain {
        object.backgroundViewClass = value
        return self
    }

    @available(*, deprecated, renamed: "backgroundClass()")
    @discardableResult
    public func backgroundViewClass(_ value: AnyClass?) -> PandaChain {
        object.backgroundViewClass = value
        return self
    }

    @discardableResult
    public func contentView(_ viewController: UIViewController, animated: Bool) -> PandaChain {
        object.setContentView(viewController, animated: animated)
        return self
    }

    @discardableResult
    public func contentSize(_ size: CGSize, animated: Bool) -> PandaChain {
        object.setContentSize(size, animated: animated)
        return self
    }
}
