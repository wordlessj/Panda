//
//  NSTextStorage.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

public protocol NSTextStorageConvertible {}

extension NSTextStorage: NSTextStorageConvertible {}
extension PandaChain: NSTextStorageConvertible {}

extension PandaChain where Object: NSTextStorage {
    @discardableResult
    public func delegate(_ value: NSTextStorageDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }
}
