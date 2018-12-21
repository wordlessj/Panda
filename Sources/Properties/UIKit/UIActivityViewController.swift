//
//  UIActivityViewController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIActivityViewController {
    @discardableResult
    public func completionWithItemsHandler(_ value: UIActivityViewController.CompletionWithItemsHandler?) -> PandaChain {
        object.completionWithItemsHandler = value
        return self
    }

    @discardableResult
    public func excludedActivityTypes(_ value: [UIActivity.ActivityType]?) -> PandaChain {
        object.excludedActivityTypes = value
        return self
    }
}
