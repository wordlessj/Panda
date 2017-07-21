//
//  UIDocumentMenuViewController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIDocumentMenuViewController {
    @discardableResult
    public func delegate(_ value: UIDocumentMenuDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }
}
