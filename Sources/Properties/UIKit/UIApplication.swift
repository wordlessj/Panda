//
//  UIApplication.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIApplication {
    @discardableResult
    public func delegate(_ value: UIApplicationDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func isIdleTimerDisabled(_ value: Bool) -> PandaChain {
        object.isIdleTimerDisabled = value
        return self
    }

    @discardableResult
    public func isNetworkActivityIndicatorVisible(_ value: Bool) -> PandaChain {
        object.isNetworkActivityIndicatorVisible = value
        return self
    }

    @discardableResult
    public func applicationIconBadgeNumber(_ value: Int) -> PandaChain {
        object.applicationIconBadgeNumber = value
        return self
    }

    @discardableResult
    public func applicationSupportsShakeToEdit(_ value: Bool) -> PandaChain {
        object.applicationSupportsShakeToEdit = value
        return self
    }

    @available(iOS, introduced: 4.0, deprecated: 10.0)
    @discardableResult
    public func scheduledLocalNotifications(_ value: [UILocalNotification]?) -> PandaChain {
        object.scheduledLocalNotifications = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func shortcutItems(_ value: [UIApplicationShortcutItem]?) -> PandaChain {
        object.shortcutItems = value
        return self
    }

    @available(iOS, introduced: 2.0, deprecated: 9.0)
    @discardableResult
    public func statusBarOrientation(_ value: UIInterfaceOrientation) -> PandaChain {
        object.statusBarOrientation = value
        return self
    }

    @available(iOS, introduced: 2.0, deprecated: 9.0)
    @discardableResult
    public func statusBarStyle(_ value: UIStatusBarStyle) -> PandaChain {
        object.statusBarStyle = value
        return self
    }

    @available(iOS, introduced: 2.0, deprecated: 9.0)
    @discardableResult
    public func isStatusBarHidden(_ value: Bool) -> PandaChain {
        object.isStatusBarHidden = value
        return self
    }
}
