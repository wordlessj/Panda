//
//  UIActivityViewController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIActivityViewController {
    @discardableResult
    public func completionWithItemsHandler(_ value: UIActivityViewControllerCompletionWithItemsHandler?) -> PandaChain {
        object.completionWithItemsHandler = value
        return self
    }

    @discardableResult
    public func excludedActivityTypes(_ value: [UIActivityType]?) -> PandaChain {
        object.excludedActivityTypes = value
        return self
    }
}
