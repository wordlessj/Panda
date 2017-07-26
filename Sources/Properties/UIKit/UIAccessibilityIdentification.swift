//
//  UIAccessibilityIdentification.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIAccessibilityIdentification {
    /// `accessibilityIdentifier`
    @discardableResult
    public func accessibilityID(_ value: String?) -> PandaChain {
        object.accessibilityIdentifier = value
        return self
    }

    @available(*, deprecated, renamed: "accessibilityID()")
    @discardableResult
    public func accessibilityIdentifier(_ value: String?) -> PandaChain {
        object.accessibilityIdentifier = value
        return self
    }
}
