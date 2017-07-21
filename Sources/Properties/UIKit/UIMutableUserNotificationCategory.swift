//
//  UIMutableUserNotificationCategory.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS, introduced: 8.0, deprecated: 10.0)
extension PandaChain where Object: UIMutableUserNotificationCategory {
    @discardableResult
    public func identifier(_ value: String?) -> PandaChain {
        object.identifier = value
        return self
    }
}
