//
//  UIMutableUserNotificationAction.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS, introduced: 8.0, deprecated: 10.0)
extension PandaChain where Object: UIMutableUserNotificationAction {
    @discardableResult
    public func identifier(_ value: String?) -> PandaChain {
        object.identifier = value
        return self
    }

    @discardableResult
    public func title(_ value: String?) -> PandaChain {
        object.title = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func behavior(_ value: UIUserNotificationActionBehavior) -> PandaChain {
        object.behavior = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func parameters(_ value: [AnyHashable: Any]) -> PandaChain {
        object.parameters = value
        return self
    }

    @discardableResult
    public func activationMode(_ value: UIUserNotificationActivationMode) -> PandaChain {
        object.activationMode = value
        return self
    }

    @discardableResult
    public func isAuthenticationRequired(_ value: Bool) -> PandaChain {
        object.isAuthenticationRequired = value
        return self
    }

    @discardableResult
    public func isDestructive(_ value: Bool) -> PandaChain {
        object.isDestructive = value
        return self
    }
}
