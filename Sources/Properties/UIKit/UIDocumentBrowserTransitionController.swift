//
//  UIDocumentBrowserTransitionController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 11.0, *)
extension PandaChain where Object: UIDocumentBrowserTransitionController {
    @discardableResult
    public func loadingProgress(_ value: Progress?) -> PandaChain {
        object.loadingProgress = value
        return self
    }

    @discardableResult
    public func targetView(_ value: UIView?) -> PandaChain {
        object.targetView = value
        return self
    }
}
