//
//  UIDocumentMenuViewController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS, introduced: 8.0, deprecated: 11.0)
extension PandaChain where Object: UIDocumentMenuViewController {
    @discardableResult
    public func delegate(_ value: UIDocumentMenuDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }
}
