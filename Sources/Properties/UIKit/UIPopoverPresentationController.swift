//
//  UIPopoverPresentationController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIPopoverPresentationController {
    @discardableResult
    public func delegate(_ value: UIPopoverPresentationControllerDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func permittedArrowDirections(_ value: UIPopoverArrowDirection) -> PandaChain {
        object.permittedArrowDirections = value
        return self
    }

    @discardableResult
    public func sourceView(_ value: UIViewConvertible?) -> PandaChain {
        object.sourceView = unbox(value)
        return self
    }

    @discardableResult
    public func sourceRect(_ value: CGRect) -> PandaChain {
        object.sourceRect = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func canOverlapSourceViewRect(_ value: Bool) -> PandaChain {
        object.canOverlapSourceViewRect = value
        return self
    }

    @discardableResult
    public func barButtonItem(_ value: UIBarButtonItemConvertible?) -> PandaChain {
        object.barButtonItem = unbox(value)
        return self
    }

    @discardableResult
    public func passthroughViews(_ value: [UIViewConvertible]?) -> PandaChain {
        object.passthroughViews = unboxArray(value)
        return self
    }

    @discardableResult
    public func backgroundColor(_ value: UIColor?) -> PandaChain {
        object.backgroundColor = value
        return self
    }

    @discardableResult
    public func popoverLayoutMargins(_ value: UIEdgeInsets) -> PandaChain {
        object.popoverLayoutMargins = value
        return self
    }

    @discardableResult
    public func popoverBackgroundViewClass(_ value: UIPopoverBackgroundViewMethods.Type?) -> PandaChain {
        object.popoverBackgroundViewClass = value
        return self
    }
}
