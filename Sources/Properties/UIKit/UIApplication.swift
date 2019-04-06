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
    public func scheduledLocalNotifications(_ value: [UILocalNotificationConvertible]?) -> PandaChain {
        object.scheduledLocalNotifications = unboxArray(value)
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func shortcutItems(_ value: [UIApplicationShortcutItem]?) -> PandaChain {
        object.shortcutItems = value
        return self
    }

    @discardableResult
    public func minimumBackgroundFetchInterval(_ minimumBackgroundFetchInterval: TimeInterval) -> PandaChain {
        object.setMinimumBackgroundFetchInterval(minimumBackgroundFetchInterval)
        return self
    }

    @available(iOS, introduced: 5.0, deprecated: 9.0)
    @discardableResult
    public func newsstandIconImage(_ image: UIImage?) -> PandaChain {
        object.setNewsstandIconImage(image)
        return self
    }

    @available(iOS, introduced: 2.0, deprecated: 9.0)
    @discardableResult
    public func statusBarOrientation(_ interfaceOrientation: UIInterfaceOrientation, animated: Bool) -> PandaChain {
        object.setStatusBarOrientation(interfaceOrientation, animated: animated)
        return self
    }

    @available(iOS, introduced: 2.0, deprecated: 9.0)
    @discardableResult
    public func statusBarStyle(_ statusBarStyle: UIStatusBarStyle, animated: Bool) -> PandaChain {
        object.setStatusBarStyle(statusBarStyle, animated: animated)
        return self
    }

    @available(iOS, introduced: 3.2, deprecated: 9.0)
    @discardableResult
    public func statusBarHidden(_ hidden: Bool, with animation: UIStatusBarAnimation) -> PandaChain {
        object.setStatusBarHidden(hidden, with: animation)
        return self
    }
}
