//
//  UIMutableApplicationShortcutItem.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 9.0, *)
extension PandaChain where Object: UIMutableApplicationShortcutItem {
    @discardableResult
    public func type(_ value: String) -> PandaChain {
        object.type = value
        return self
    }

    @discardableResult
    public func localizedTitle(_ value: String) -> PandaChain {
        object.localizedTitle = value
        return self
    }

    @discardableResult
    public func localizedSubtitle(_ value: String?) -> PandaChain {
        object.localizedSubtitle = value
        return self
    }

    @discardableResult
    public func icon(_ value: UIApplicationShortcutIcon?) -> PandaChain {
        object.icon = value
        return self
    }

    @discardableResult
    public func userInfo(_ value: [String: NSSecureCoding]?) -> PandaChain {
        object.userInfo = value
        return self
    }
}
