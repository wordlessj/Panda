//
//  UIAccessibilityIdentification.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIAccessibilityIdentification {
    @discardableResult
    public func accessibilityIdentifier(_ value: String?) -> PandaChain {
        object.accessibilityIdentifier = value
        return self
    }
}
