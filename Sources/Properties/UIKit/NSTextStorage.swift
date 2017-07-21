//
//  NSTextStorage.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: NSTextStorage {
    @discardableResult
    public func delegate(_ value: NSTextStorageDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }
}
