//
//  UIAccessibilityCustomAction.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIAccessibilityCustomAction {
    @discardableResult
    public func name(_ value: String) -> PandaChain {
        object.name = value
        return self
    }

    @discardableResult
    public func target(_ value: AnyObject?) -> PandaChain {
        object.target = value
        return self
    }

    @discardableResult
    public func selector(_ value: Selector) -> PandaChain {
        object.selector = value
        return self
    }
}
