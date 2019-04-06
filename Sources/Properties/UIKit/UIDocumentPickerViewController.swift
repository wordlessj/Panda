//
//  UIDocumentPickerViewController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIDocumentPickerViewController {
    @discardableResult
    public func delegate(_ value: UIDocumentPickerDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func allowsMultipleSelection(_ value: Bool) -> PandaChain {
        object.allowsMultipleSelection = value
        return self
    }
}
