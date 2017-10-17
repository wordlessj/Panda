//
//  NSObject.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

public protocol NSObjectConvertible {}

extension NSObject: NSObjectConvertible {}
extension PandaChain: NSObjectConvertible {}

extension PandaChain where Object: NSObject {
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

    @available(iOS 11.0, *)
    @discardableResult
    public func accessibilityAttributedLabel(_ value: NSAttributedString?) -> PandaChain {
        object.accessibilityAttributedLabel = value
        return self
    }

    @discardableResult
    public func accessibilityHint(_ value: String?) -> PandaChain {
        object.accessibilityHint = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func accessibilityAttributedHint(_ value: NSAttributedString?) -> PandaChain {
        object.accessibilityAttributedHint = value
        return self
    }

    @discardableResult
    public func accessibilityValue(_ value: String?) -> PandaChain {
        object.accessibilityValue = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func accessibilityAttributedValue(_ value: NSAttributedString?) -> PandaChain {
        object.accessibilityAttributedValue = value
        return self
    }

    @discardableResult
    public func accessibilityTraits(_ value: UIAccessibilityTraits) -> PandaChain {
        object.accessibilityTraits = value
        return self
    }

    @discardableResult
    public func accessibilityFrame(_ value: CGRect) -> PandaChain {
        object.accessibilityFrame = value
        return self
    }

    @discardableResult
    public func accessibilityPath(_ value: UIBezierPathConvertible?) -> PandaChain {
        object.accessibilityPath = unbox(value)
        return self
    }

    @discardableResult
    public func accessibilityActivationPoint(_ value: CGPoint) -> PandaChain {
        object.accessibilityActivationPoint = value
        return self
    }

    @discardableResult
    public func accessibilityLanguage(_ value: String?) -> PandaChain {
        object.accessibilityLanguage = value
        return self
    }

    @discardableResult
    public func accessibilityElementsHidden(_ value: Bool) -> PandaChain {
        object.accessibilityElementsHidden = value
        return self
    }

    @discardableResult
    public func accessibilityViewIsModal(_ value: Bool) -> PandaChain {
        object.accessibilityViewIsModal = value
        return self
    }

    @discardableResult
    public func shouldGroupAccessibilityChildren(_ value: Bool) -> PandaChain {
        object.shouldGroupAccessibilityChildren = value
        return self
    }

    @discardableResult
    public func accessibilityNavigationStyle(_ value: UIAccessibilityNavigationStyle) -> PandaChain {
        object.accessibilityNavigationStyle = value
        return self
    }

    @discardableResult
    public func accessibilityCustomActions(_ value: [UIAccessibilityCustomActionConvertible]?) -> PandaChain {
        object.accessibilityCustomActions = unboxArray(value)
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func accessibilityDragSourceDescriptors(_ value: [UIAccessibilityLocationDescriptor]?) -> PandaChain {
        object.accessibilityDragSourceDescriptors = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func accessibilityDropPointDescriptors(_ value: [UIAccessibilityLocationDescriptor]?) -> PandaChain {
        object.accessibilityDropPointDescriptors = value
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func accessibilityCustomRotors(_ value: [UIAccessibilityCustomRotorConvertible]?) -> PandaChain {
        object.accessibilityCustomRotors = unboxArray(value)
        return self
    }

    @discardableResult
    public func accessibilityElements(_ value: [Any]?) -> PandaChain {
        object.accessibilityElements = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func accessibilityContainerType(_ value: UIAccessibilityContainerType) -> PandaChain {
        object.accessibilityContainerType = value
        return self
    }
}
