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

    @discardableResult
    public func hidesBackButton(_ hidesBackButton: Bool, animated: Bool) -> PandaChain {
        object.setHidesBackButton(hidesBackButton, animated: animated)
        return self
    }
}
