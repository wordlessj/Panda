//
//  UINavigationBar.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UINavigationBar {
    @discardableResult
    public func barStyle(_ value: UIBarStyle) -> PandaChain {
        object.barStyle = value
        return self
    }

    @discardableResult
    public func delegate(_ value: UINavigationBarDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func isTranslucent(_ value: Bool) -> PandaChain {
        object.isTranslucent = value
        return self
    }

    @discardableResult
    public func items(_ value: [UINavigationItem]?) -> PandaChain {
        object.items = value
        return self
    }

    @discardableResult
    public func tintColor(_ value: UIColor?) -> PandaChain {
        object.tintColor = value
        return self
    }

    @discardableResult
    public func barTintColor(_ value: UIColor?) -> PandaChain {
        object.barTintColor = value
        return self
    }

    @discardableResult
    public func shadowImage(_ value: UIImage?) -> PandaChain {
        object.shadowImage = value
        return self
    }

    @discardableResult
    public func titleTextAttributes(_ value: [String: Any]?) -> PandaChain {
        object.titleTextAttributes = value
        return self
    }

    @discardableResult
    public func backIndicatorImage(_ value: UIImage?) -> PandaChain {
        object.backIndicatorImage = value
        return self
    }

    @discardableResult
    public func backIndicatorTransitionMaskImage(_ value: UIImage?) -> PandaChain {
        object.backIndicatorTransitionMaskImage = value
        return self
    }
}
