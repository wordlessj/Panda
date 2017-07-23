//
//  UIToolbar.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIToolbar {
    @discardableResult
    public func barStyle(_ value: UIBarStyle) -> PandaChain {
        object.barStyle = value
        return self
    }

    @discardableResult
    public func items(_ value: [UIBarButtonItem]?) -> PandaChain {
        object.items = value
        return self
    }

    @discardableResult
    public func isTranslucent(_ value: Bool) -> PandaChain {
        object.isTranslucent = value
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
    public func delegate(_ value: UIToolbarDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func items(_ items: [UIBarButtonItem]?, animated: Bool) -> PandaChain {
        object.setItems(items, animated: animated)
        return self
    }

    @discardableResult
    public func backgroundImage(_ backgroundImage: UIImage?, forToolbarPosition topOrBottom: UIBarPosition, barMetrics: UIBarMetrics) -> PandaChain {
        object.setBackgroundImage(backgroundImage, forToolbarPosition: topOrBottom, barMetrics: barMetrics)
        return self
    }

    @discardableResult
    public func shadowImage(_ shadowImage: UIImage?, forToolbarPosition topOrBottom: UIBarPosition) -> PandaChain {
        object.setShadowImage(shadowImage, forToolbarPosition: topOrBottom)
        return self
    }
}
