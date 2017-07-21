//
//  UIAccessibilityCustomRotorSearchPredicate.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 10.0, *)
extension PandaChain where Object: UIAccessibilityCustomRotorSearchPredicate {
    @discardableResult
    public func currentItem(_ value: UIAccessibilityCustomRotorItemResult) -> PandaChain {
        object.currentItem = value
        return self
    }

    @discardableResult
    public func searchDirection(_ value: UIAccessibilityCustomRotorDirection) -> PandaChain {
        object.searchDirection = value
        return self
    }
}