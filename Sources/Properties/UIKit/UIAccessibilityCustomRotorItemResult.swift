//
//  UIAccessibilityCustomRotorItemResult.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 10.0, *)
public protocol UIAccessibilityCustomRotorItemResultConvertible {}

@available(iOS 10.0, *)
extension UIAccessibilityCustomRotorItemResult: UIAccessibilityCustomRotorItemResultConvertible {}
@available(iOS 10.0, *)
extension PandaChain: UIAccessibilityCustomRotorItemResultConvertible {}

@available(iOS 10.0, *)
extension PandaChain where Object: UIAccessibilityCustomRotorItemResult {
    @discardableResult
    public func targetElement(_ value: NSObjectProtocol?) -> PandaChain {
        object.targetElement = value
        return self
    }

    @discardableResult
    public func targetRange(_ value: UITextRange?) -> PandaChain {
        object.targetRange = value
        return self
    }
}
