//
//  UINavigationItem.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UINavigationItem {
    @discardableResult
    public func title(_ value: String?) -> PandaChain {
        object.title = value
        return self
    }

    @discardableResult
    public func titleView(_ value: UIView?) -> PandaChain {
        object.titleView = value
        return self
    }

    @discardableResult
    public func prompt(_ value: String?) -> PandaChain {
        object.prompt = value
        return self
    }

    @discardableResult
    public func hidesBackButton(_ value: Bool) -> PandaChain {
        object.hidesBackButton = value
        return self
    }

    @discardableResult
    public func leftItemsSupplementBackButton(_ value: Bool) -> PandaChain {
        object.leftItemsSupplementBackButton = value
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
    public func searchController(_ value: UISearchController?) -> PandaChain {
        object.searchController = value
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
}
