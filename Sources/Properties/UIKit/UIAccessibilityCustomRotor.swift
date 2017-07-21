//
//  UIAccessibilityCustomRotor.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 10.0, *)
extension PandaChain where Object: UIAccessibilityCustomRotor {
    @discardableResult
    public func name(_ value: String) -> PandaChain {
        object.name = value
        return self
    }

    @discardableResult
    public func itemSearchBlock(_ value: @escaping UIAccessibilityCustomRotorSearch) -> PandaChain {
        object.itemSearchBlock = value
        return self
    }
}
