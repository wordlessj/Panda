//
//  UINavigationItem.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

public protocol UINavigationItemConvertible {}

extension UINavigationItem: UINavigationItemConvertible {}
extension PandaChain: UINavigationItemConvertible {}

extension PandaChain where Object: UINavigationItem {
    @discardableResult
    public func title(_ value: String?) -> PandaChain {
        object.title = value
        return self
    }

    @discardableResult
    public func titleView(_ value: UIViewConvertible?) -> PandaChain {
        object.titleView = unbox(value)
        return self
    }

    @discardableResult
    public func prompt(_ value: String?) -> PandaChain {
        object.prompt = value
        return self
    }

    /// `backBarButtonItem`
    @discardableResult
    public func backItem(_ value: UIBarButtonItemConvertible?) -> PandaChain {
        object.backBarButtonItem = unbox(value)
        return self
    }

    @available(*, deprecated, renamed: "backItem()")
    @discardableResult
    public func backBarButtonItem(_ value: UIBarButtonItemConvertible?) -> PandaChain {
        object.backBarButtonItem = unbox(value)
        return self
    }

    @discardableResult
    public func hidesBackButton(_ value: Bool) -> PandaChain {
        object.hidesBackButton = value
        return self
    }

    /// `leftBarButtonItems`
    @discardableResult
    public func leftItems(_ value: [UIBarButtonItemConvertible]?) -> PandaChain {
        object.leftBarButtonItems = unboxArray(value)
        return self
    }

    @available(*, deprecated, renamed: "leftItems()")
    @discardableResult
    public func leftBarButtonItems(_ value: [UIBarButtonItemConvertible]?) -> PandaChain {
        object.leftBarButtonItems = unboxArray(value)
        return self
    }

    /// `rightBarButtonItems`
    @discardableResult
    public func rightItems(_ value: [UIBarButtonItemConvertible]?) -> PandaChain {
        object.rightBarButtonItems = unboxArray(value)
        return self
    }

    @available(*, deprecated, renamed: "rightItems()")
    @discardableResult
    public func rightBarButtonItems(_ value: [UIBarButtonItemConvertible]?) -> PandaChain {
        object.rightBarButtonItems = unboxArray(value)
        return self
    }

    @discardableResult
    public func leftItemsSupplementBackButton(_ value: Bool) -> PandaChain {
        object.leftItemsSupplementBackButton = value
        return self
    }

    /// `leftBarButtonItem`
    @discardableResult
    public func leftItem(_ value: UIBarButtonItemConvertible?) -> PandaChain {
        object.leftBarButtonItem = unbox(value)
        return self
    }

    @available(*, deprecated, renamed: "leftItem()")
    @discardableResult
    public func leftBarButtonItem(_ value: UIBarButtonItemConvertible?) -> PandaChain {
        object.leftBarButtonItem = unbox(value)
        return self
    }

    /// `rightBarButtonItem`
    @discardableResult
    public func rightItem(_ value: UIBarButtonItemConvertible?) -> PandaChain {
        object.rightBarButtonItem = unbox(value)
        return self
    }

    @available(*, deprecated, renamed: "rightItem()")
    @discardableResult
    public func rightBarButtonItem(_ value: UIBarButtonItemConvertible?) -> PandaChain {
        object.rightBarButtonItem = unbox(value)
        return self
    }

    /// `largeTitleDisplayMode`
    @available(iOS 11.0, *)
    @discardableResult
    public func largeTitleMode(_ value: UINavigationItem.LargeTitleDisplayMode) -> PandaChain {
        object.largeTitleDisplayMode = value
        return self
    }

    @available(*, deprecated, renamed: "largeTitleMode()")
    @available(iOS 11.0, *)
    @discardableResult
    public func largeTitleDisplayMode(_ value: UINavigationItem.LargeTitleDisplayMode) -> PandaChain {
        object.largeTitleDisplayMode = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func searchController(_ value: UISearchControllerConvertible?) -> PandaChain {
        object.searchController = unbox(value)
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func hidesSearchBarWhenScrolling(_ value: Bool) -> PandaChain {
        object.hidesSearchBarWhenScrolling = value
        return self
    }

    @discardableResult
    public func hidesBackButton(_ hidesBackButton: Bool, animated: Bool) -> PandaChain {
        object.setHidesBackButton(hidesBackButton, animated: animated)
        return self
    }

    /// `leftBarButtonItems`
    @discardableResult
    public func leftItems(_ items: [UIBarButtonItemConvertible]?, animated: Bool) -> PandaChain {
        object.setLeftBarButtonItems(unboxArray(items), animated: animated)
        return self
    }

    @available(*, deprecated, renamed: "leftItems()")
    @discardableResult
    public func leftBarButtonItems(_ items: [UIBarButtonItemConvertible]?, animated: Bool) -> PandaChain {
        object.setLeftBarButtonItems(unboxArray(items), animated: animated)
        return self
    }

    /// `rightBarButtonItems`
    @discardableResult
    public func rightItems(_ items: [UIBarButtonItemConvertible]?, animated: Bool) -> PandaChain {
        object.setRightBarButtonItems(unboxArray(items), animated: animated)
        return self
    }

    @available(*, deprecated, renamed: "rightItems()")
    @discardableResult
    public func rightBarButtonItems(_ items: [UIBarButtonItemConvertible]?, animated: Bool) -> PandaChain {
        object.setRightBarButtonItems(unboxArray(items), animated: animated)
        return self
    }

    /// `leftBarButton`
    @discardableResult
    public func leftItem(_ item: UIBarButtonItemConvertible?, animated: Bool) -> PandaChain {
        object.setLeftBarButton(unbox(item), animated: animated)
        return self
    }

    @available(*, deprecated, renamed: "leftItem()")
    @discardableResult
    public func leftBarButton(_ item: UIBarButtonItemConvertible?, animated: Bool) -> PandaChain {
        object.setLeftBarButton(unbox(item), animated: animated)
        return self
    }

    /// `rightBarButton`
    @discardableResult
    public func rightItem(_ item: UIBarButtonItemConvertible?, animated: Bool) -> PandaChain {
        object.setRightBarButton(unbox(item), animated: animated)
        return self
    }

    @available(*, deprecated, renamed: "rightItem()")
    @discardableResult
    public func rightBarButton(_ item: UIBarButtonItemConvertible?, animated: Bool) -> PandaChain {
        object.setRightBarButton(unbox(item), animated: animated)
        return self
    }
}
