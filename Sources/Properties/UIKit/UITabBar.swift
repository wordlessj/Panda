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

    /// `tintColor`
    @discardableResult
    public func tint(_ value: UIColor?) -> PandaChain {
        object.tintColor = value
        return self
    }

    @available(*, deprecated, renamed: "tint()")
    @discardableResult
    public func tintColor(_ value: UIColor?) -> PandaChain {
        object.tintColor = value
        return self
    }

    /// `barTintColor`
    @discardableResult
    public func barTint(_ value: UIColor?) -> PandaChain {
        object.barTintColor = value
        return self
    }

    @available(*, deprecated, renamed: "barTint()")
    @discardableResult
    public func barTintColor(_ value: UIColor?) -> PandaChain {
        object.barTintColor = value
        return self
    }

    /// `unselectedItemTintColor`
    @available(iOS 10.0, *)
    @discardableResult
    public func unselectedItemTint(_ value: UIColor?) -> PandaChain {
        object.unselectedItemTintColor = value
        return self
    }

    @available(*, deprecated, renamed: "unselectedItemTint()")
    @available(iOS 10.0, *)
    @discardableResult
    public func unselectedItemTintColor(_ value: UIColor?) -> PandaChain {
        object.unselectedItemTintColor = value
        return self
    }

    /// `backgroundImage`
    @discardableResult
    public func background(_ value: UIImage?) -> PandaChain {
        object.backgroundImage = value
        return self
    }

    @available(*, deprecated, renamed: "background()")
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
    public func itemPositioning(_ value: UITabBarItemPositioning) -> PandaChain {
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

    /// `barStyle`
    @discardableResult
    public func style(_ value: UIBarStyle) -> PandaChain {
        object.barStyle = value
        return self
    }

    @available(*, deprecated, renamed: "style()")
    @discardableResult
    public func barStyle(_ value: UIBarStyle) -> PandaChain {
        object.barStyle = value
        return self
    }

    @discardableResult
    public func translucent(_ value: Bool) -> PandaChain {
        object.isTranslucent = value
        return self
    }

    @discardableResult
    public func items(_ items: [UITabBarItemConvertible]?, animated: Bool) -> PandaChain {
        object.setItems(unboxArray(items), animated: animated)
        return self
    }
}
