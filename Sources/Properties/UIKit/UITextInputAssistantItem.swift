//
//  UITextInputAssistantItem.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 9.0, *)
extension PandaChain where Object: UITextInputAssistantItem {
    @discardableResult
    public func allowsHidingShortcuts(_ value: Bool) -> PandaChain {
        object.allowsHidingShortcuts = value
        return self
    }

    @discardableResult
    public func leadingBarButtonGroups(_ value: [UIBarButtonItemGroupConvertible]) -> PandaChain {
        object.leadingBarButtonGroups = unboxArray(value)
        return self
    }

    @discardableResult
    public func trailingBarButtonGroups(_ value: [UIBarButtonItemGroupConvertible]) -> PandaChain {
        object.trailingBarButtonGroups = unboxArray(value)
        return self
    }
}
