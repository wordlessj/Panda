//
//  UITabBar.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UITabBar {
    @discardableResult
    public func delegate(_ value: UITabBarDelegate?) -> Self {
        return addAttributes(key: "delegate", value: value) {
            $0.delegate = value
        }
    }

    @discardableResult
    public func items(_ value: [UITabBarItem]?) -> Self {
        return addAttributes(key: "items", value: value) {
            $0.items = value
        }
    }

    @discardableResult
    public func selectedItem(_ value: UITabBarItem?) -> Self {
        return addAttributes(key: "selectedItem", value: value) {
            $0.selectedItem = value
        }
    }

    /// `tintColor`
    @discardableResult
    public func tint(_ value: UIColor?) -> Self {
        return addAttributes(key: "tintColor", value: value) {
            $0.tintColor = value
        }
    }

    @available(*, deprecated, renamed: "tint()")
    @discardableResult
    public func tintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "tintColor", value: value) {
            $0.tintColor = value
        }
    }

    /// `barTintColor`
    @discardableResult
    public func barTint(_ value: UIColor?) -> Self {
        return addAttributes(key: "barTintColor", value: value) {
            $0.barTintColor = value
        }
    }

    @available(*, deprecated, renamed: "barTint()")
    @discardableResult
    public func barTintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "barTintColor", value: value) {
            $0.barTintColor = value
        }
    }

    /// `unselectedItemTintColor`
    @available(iOS 10.0, *)
    @discardableResult
    public func unselectedItemTint(_ value: UIColor?) -> Self {
        return addAttributes(key: "unselectedItemTintColor", value: value) {
            $0.unselectedItemTintColor = value
        }
    }

    @available(*, deprecated, renamed: "unselectedItemTint()")
    @available(iOS 10.0, *)
    @discardableResult
    public func unselectedItemTintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "unselectedItemTintColor", value: value) {
            $0.unselectedItemTintColor = value
        }
    }

    /// `backgroundImage`
    @discardableResult
    public func background(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImage", value: value) {
            $0.backgroundImage = value
        }
    }

    @available(*, deprecated, renamed: "background()")
    @discardableResult
    public func backgroundImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImage", value: value) {
            $0.backgroundImage = value
        }
    }

    @discardableResult
    public func selectionIndicatorImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "selectionIndicatorImage", value: value) {
            $0.selectionIndicatorImage = value
        }
    }

    @discardableResult
    public func shadowImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "shadowImage", value: value) {
            $0.shadowImage = value
        }
    }

    @discardableResult
    public func itemPositioning(_ value: UITabBarItemPositioning) -> Self {
        return addAttributes(key: "itemPositioning", value: value) {
            $0.itemPositioning = value
        }
    }

    @discardableResult
    public func itemWidth(_ value: CGFloat) -> Self {
        return addAttributes(key: "itemWidth", value: value) {
            $0.itemWidth = value
        }
    }

    @discardableResult
    public func itemSpacing(_ value: CGFloat) -> Self {
        return addAttributes(key: "itemSpacing", value: value) {
            $0.itemSpacing = value
        }
    }

    /// `barStyle`
    @discardableResult
    public func style(_ value: UIBarStyle) -> Self {
        return addAttributes(key: "barStyle", value: value) {
            $0.barStyle = value
        }
    }

    @available(*, deprecated, renamed: "style()")
    @discardableResult
    public func barStyle(_ value: UIBarStyle) -> Self {
        return addAttributes(key: "barStyle", value: value) {
            $0.barStyle = value
        }
    }

    @discardableResult
    public func translucent(_ value: Bool) -> Self {
        return addAttributes(key: "isTranslucent", value: value) {
            $0.isTranslucent = value
        }
    }
}
