//
//  UIAccessibilityElement.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIAccessibilityElement {
    @discardableResult
    public func accessibilityContainer(_ value: AnyObject?) -> PandaChain {
        object.accessibilityContainer = value
        return self
    }

    @discardableResult
    public func isAccessibilityElement(_ value: Bool) -> PandaChain {
        object.isAccessibilityElement = value
        return self
    }

    @discardableResult
    public func accessibilityLabel(_ value: String?) -> PandaChain {
        object.accessibilityLabel = value
        return self
    }

    @discardableResult
    public func accessibilityHint(_ value: String?) -> PandaChain {
        object.accessibilityHint = value
        return self
    }

    @discardableResult
    public func accessibilityValue(_ value: String?) -> PandaChain {
        object.accessibilityValue = value
        return self
    }

    @discardableResult
    public func accessibilityFrame(_ value: CGRect) -> PandaChain {
        object.accessibilityFrame = value
        return self
    }

    @discardableResult
    public func accessibilityTraits(_ value: UIAccessibilityTraits) -> PandaChain {
        object.accessibilityTraits = value
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func accessibilityFrameInContainerSpace(_ value: CGRect) -> PandaChain {
        object.accessibilityFrameInContainerSpace = value
        return self
    }
}
