//
//  UIManagedDocument.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIManagedDocument {
    @discardableResult
    public func persistentStoreOptions(_ value: [AnyHashable: Any]?) -> PandaChain {
        object.persistentStoreOptions = value
        return self
    }

    @discardableResult
    public func modelConfiguration(_ value: String?) -> PandaChain {
        object.modelConfiguration = value
        return self
    }
}
