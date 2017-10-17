//
//  UIAccessibilityCustomAction.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

public protocol UIAccessibilityCustomActionConvertible {}

extension UIAccessibilityCustomAction: UIAccessibilityCustomActionConvertible {}
extension PandaChain: UIAccessibilityCustomActionConvertible {}

extension PandaChain where Object: UIAccessibilityCustomAction {
    @discardableResult
    public func name(_ value: String) -> PandaChain {
        object.name = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func attributedName(_ value: NSAttributedString) -> PandaChain {
        object.attributedName = value
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
