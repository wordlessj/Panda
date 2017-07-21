//
//  UIBarButtonItem.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIBarButtonItem {
    @discardableResult
    public func style(_ value: UIBarButtonItemStyle) -> PandaChain {
        object.style = value
        return self
    }

    @discardableResult
    public func width(_ value: CGFloat) -> PandaChain {
        object.width = value
        return self
    }

    @discardableResult
    public func possibleTitles(_ value: Set<String>?) -> PandaChain {
        object.possibleTitles = value
        return self
    }

    @discardableResult
    public func customView(_ value: UIView?) -> PandaChain {
        object.customView = value
        return self
    }

    @discardableResult
    public func action(_ value: Selector?) -> PandaChain {
        object.action = value
        return self
    }

    @discardableResult
    public func target(_ value: AnyObject?) -> PandaChain {
        object.target = value
        return self
    }

    @discardableResult
    public func tintColor(_ value: UIColor?) -> PandaChain {
        object.tintColor = value
        return self
    }
}
