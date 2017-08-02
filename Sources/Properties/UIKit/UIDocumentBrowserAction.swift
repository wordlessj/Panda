//
//  UIDocumentBrowserAction.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 11.0, *)
extension PandaChain where Object: UIDocumentBrowserAction {
    @discardableResult
    public func image(_ value: UIImage?) -> PandaChain {
        object.image = value
        return self
    }

    @discardableResult
    public func supportedContentTypes(_ value: [String]) -> PandaChain {
        object.supportedContentTypes = value
        return self
    }

    @discardableResult
    public func supportsMultipleItems(_ value: Bool) -> PandaChain {
        object.supportsMultipleItems = value
        return self
    }
}
