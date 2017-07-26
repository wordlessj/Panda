//
//  UIMutableUserNotificationCategory.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS, introduced: 8.0, deprecated: 10.0)
extension PandaChain where Object: UIMutableUserNotificationCategory {
    /// `identifier`
    @discardableResult
    public func id(_ value: String?) -> PandaChain {
        object.identifier = value
        return self
    }

    @available(*, deprecated, renamed: "id()")
    @discardableResult
    public func identifier(_ value: String?) -> PandaChain {
        object.identifier = value
        return self
    }

    @discardableResult
    public func actions(_ actions: [UIUserNotificationAction]?, for context: UIUserNotificationActionContext) -> PandaChain {
        object.setActions(actions, for: context)
        return self
    }
}
