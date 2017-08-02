//
//  UIDragItem.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 11.0, *)
extension PandaChain where Object: UIDragItem {
    @discardableResult
    public func localObject(_ value: Any?) -> PandaChain {
        object.localObject = value
        return self
    }
}
