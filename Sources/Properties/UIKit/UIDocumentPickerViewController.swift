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

    /// `allowsMultipleSelection`
    @available(iOS 11.0, *)
    @discardableResult
    public func multiSelectable(_ value: Bool) -> PandaChain {
        object.allowsMultipleSelection = value
        return self
    }

    @available(*, deprecated, renamed: "multiSelectable()")
    @available(iOS 11.0, *)
    @discardableResult
    public func allowsMultipleSelection(_ value: Bool) -> PandaChain {
        object.allowsMultipleSelection = value
        return self
    }
}
