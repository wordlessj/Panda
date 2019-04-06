//
//  UITabBar.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UITabBar {
    @discardableResult
    public func delegate(_ value: UITabBarDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func items(_ value: [UITabBarItemConvertible]?) -> PandaChain {
        object.items = unboxArray(value)
        return self
    }

    @discardableResult
    public func selectedItem(_ value: UITabBarItemConvertible?) -> PandaChain {
        object.selectedItem = unbox(value)
        return self
    }

    @discardableResult
    public func tintColor(_ value: UIColor!) -> PandaChain {
        object.tintColor = value
        return self
    }

    @discardableResult
    public func barTintColor(_ value: UIColor?) -> PandaChain {
        object.barTintColor = value
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func unselectedItemTintColor(_ value: UIColor?) -> PandaChain {
        object.unselectedItemTintColor = value
        return self
    }

    @discardableResult
    public func backgroundImage(_ value: UIImage?) -> PandaChain {
        object.backgroundImage = value
        return self
    }

    @discardableResult
    public func selectionIndicatorImage(_ value: UIImage?) -> PandaChain {
        object.selectionIndicatorImage = value
        return self
    }

    @discardableResult
    public func shadowImage(_ value: UIImage?) -> PandaChain {
        object.shadowImage = value
        return self
    }

    @discardableResult
    public func itemPositioning(_ value: UITabBar.ItemPositioning) -> PandaChain {
        object.itemPositioning = value
        return self
    }

    @discardableResult
    public func itemWidth(_ value: CGFloat) -> PandaChain {
        object.itemWidth = value
        return self
    }

    @discardableResult
    public func itemSpacing(_ value: CGFloat) -> PandaChain {
        object.itemSpacing = value
        return self
    }

    @discardableResult
    public func barStyle(_ value: UIBarStyle) -> PandaChain {
        object.barStyle = value
        return self
    }

    @discardableResult
    public func isTranslucent(_ value: Bool) -> PandaChain {
        object.isTranslucent = value
        return self
    }

    @discardableResult
    public func items(_ items: [UITabBarItemConvertible]?, animated: Bool) -> PandaChain {
        object.setItems(unboxArray(items), animated: animated)
        return self
    }
}
