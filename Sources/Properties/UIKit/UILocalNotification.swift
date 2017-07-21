//
//  UILocalNotification.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit
import CoreLocation

@available(iOS, introduced: 4.0, deprecated: 10.0)
extension PandaChain where Object: UILocalNotification {
    @discardableResult
    public func fireDate(_ value: Date?) -> PandaChain {
        object.fireDate = value
        return self
    }

    @discardableResult
    public func timeZone(_ value: TimeZone?) -> PandaChain {
        object.timeZone = value
        return self
    }

    @discardableResult
    public func repeatInterval(_ value: NSCalendar.Unit) -> PandaChain {
        object.repeatInterval = value
        return self
    }

    @discardableResult
    public func repeatCalendar(_ value: Calendar?) -> PandaChain {
        object.repeatCalendar = value
        return self
    }

    @discardableResult
    public func region(_ value: CLRegion?) -> PandaChain {
        object.region = value
        return self
    }

    @discardableResult
    public func regionTriggersOnce(_ value: Bool) -> PandaChain {
        object.regionTriggersOnce = value
        return self
    }

    @discardableResult
    public func alertBody(_ value: String?) -> PandaChain {
        object.alertBody = value
        return self
    }

    @discardableResult
    public func hasAction(_ value: Bool) -> PandaChain {
        object.hasAction = value
        return self
    }

    @discardableResult
    public func alertAction(_ value: String?) -> PandaChain {
        object.alertAction = value
        return self
    }

    @discardableResult
    public func alertLaunchImage(_ value: String?) -> PandaChain {
        object.alertLaunchImage = value
        return self
    }

    @available(iOS 8.2, *)
    @discardableResult
    public func alertTitle(_ value: String?) -> PandaChain {
        object.alertTitle = value
        return self
    }

    @discardableResult
    public func soundName(_ value: String?) -> PandaChain {
        object.soundName = value
        return self
    }

    @discardableResult
    public func applicationIconBadgeNumber(_ value: Int) -> PandaChain {
        object.applicationIconBadgeNumber = value
        return self
    }

    @discardableResult
    public func userInfo(_ value: [AnyHashable: Any]?) -> PandaChain {
        object.userInfo = value
        return self
    }

    @discardableResult
    public func category(_ value: String?) -> PandaChain {
        object.category = value
        return self
    }
}
