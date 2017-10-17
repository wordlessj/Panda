//
//  UIDocumentBrowserViewController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 11.0, *)
extension PandaChain where Object: UIDocumentBrowserViewController {
    @discardableResult
    public func delegate(_ value: UIDocumentBrowserViewControllerDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func allowsDocumentCreation(_ value: Bool) -> PandaChain {
        object.allowsDocumentCreation = value
        return self
    }

    @discardableResult
    public func allowsPickingMultipleItems(_ value: Bool) -> PandaChain {
        object.allowsPickingMultipleItems = value
        return self
    }

    @discardableResult
    public func additionalLeadingNavigationBarButtonItems(_ value: [UIBarButtonItemConvertible]) -> PandaChain {
        object.additionalLeadingNavigationBarButtonItems = unboxArray(value)
        return self
    }

    @discardableResult
    public func additionalTrailingNavigationBarButtonItems(_ value: [UIBarButtonItemConvertible]) -> PandaChain {
        object.additionalTrailingNavigationBarButtonItems = unboxArray(value)
        return self
    }

    @discardableResult
    public func customActions(_ value: [UIDocumentBrowserActionConvertible]) -> PandaChain {
        object.customActions = unboxArray(value)
        return self
    }

    @discardableResult
    public func browserUserInterfaceStyle(_ value: UIDocumentBrowserViewController.BrowserUserInterfaceStyle) -> PandaChain {
        object.browserUserInterfaceStyle = value
        return self
    }
}
