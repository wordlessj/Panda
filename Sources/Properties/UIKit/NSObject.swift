//
//  NSObject.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: NSObject {
    @discardableResult
    public func isAccessibilityElement(_ value: Bool) -> Self {
        return addAttributes(key: "isAccessibilityElement", value: value) {
            $0.isAccessibilityElement = value
        }
    }

    @discardableResult
    public func accessibilityLabel(_ value: String?) -> Self {
        return addAttributes(key: "accessibilityLabel", value: value) {
            $0.accessibilityLabel = value
        }
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func accessibilityAttributedLabel(_ value: NSAttributedString?) -> Self {
        return addAttributes(key: "accessibilityAttributedLabel", value: value) {
            $0.accessibilityAttributedLabel = value
        }
    }

    @discardableResult
    public func accessibilityHint(_ value: String?) -> Self {
        return addAttributes(key: "accessibilityHint", value: value) {
            $0.accessibilityHint = value
        }
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func accessibilityAttributedHint(_ value: NSAttributedString?) -> Self {
        return addAttributes(key: "accessibilityAttributedHint", value: value) {
            $0.accessibilityAttributedHint = value
        }
    }

    @discardableResult
    public func accessibilityValue(_ value: String?) -> Self {
        return addAttributes(key: "accessibilityValue", value: value) {
            $0.accessibilityValue = value
        }
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func accessibilityAttributedValue(_ value: NSAttributedString?) -> Self {
        return addAttributes(key: "accessibilityAttributedValue", value: value) {
            $0.accessibilityAttributedValue = value
        }
    }

    @discardableResult
    public func accessibilityTraits(_ value: UIAccessibilityTraits) -> Self {
        return addAttributes(key: "accessibilityTraits", value: value) {
            $0.accessibilityTraits = value
        }
    }

    @discardableResult
    public func accessibilityFrame(_ value: CGRect) -> Self {
        return addAttributes(key: "accessibilityFrame", value: value) {
            $0.accessibilityFrame = value
        }
    }

    @discardableResult
    public func accessibilityPath(_ value: UIBezierPath?) -> Self {
        return addAttributes(key: "accessibilityPath", value: value) {
            $0.accessibilityPath = value
        }
    }

    @discardableResult
    public func accessibilityActivationPoint(_ value: CGPoint) -> Self {
        return addAttributes(key: "accessibilityActivationPoint", value: value) {
            $0.accessibilityActivationPoint = value
        }
    }

    @discardableResult
    public func accessibilityLanguage(_ value: String?) -> Self {
        return addAttributes(key: "accessibilityLanguage", value: value) {
            $0.accessibilityLanguage = value
        }
    }

    @discardableResult
    public func accessibilityElementsHidden(_ value: Bool) -> Self {
        return addAttributes(key: "accessibilityElementsHidden", value: value) {
            $0.accessibilityElementsHidden = value
        }
    }

    @discardableResult
    public func accessibilityViewIsModal(_ value: Bool) -> Self {
        return addAttributes(key: "accessibilityViewIsModal", value: value) {
            $0.accessibilityViewIsModal = value
        }
    }

    @discardableResult
    public func shouldGroupAccessibilityChildren(_ value: Bool) -> Self {
        return addAttributes(key: "shouldGroupAccessibilityChildren", value: value) {
            $0.shouldGroupAccessibilityChildren = value
        }
    }

    @discardableResult
    public func accessibilityNavigationStyle(_ value: UIAccessibilityNavigationStyle) -> Self {
        return addAttributes(key: "accessibilityNavigationStyle", value: value) {
            $0.accessibilityNavigationStyle = value
        }
    }

    @discardableResult
    public func accessibilityCustomActions(_ value: [UIAccessibilityCustomAction]?) -> Self {
        return addAttributes(key: "accessibilityCustomActions", value: value) {
            $0.accessibilityCustomActions = value
        }
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func accessibilityDragSourceDescriptors(_ value: [UIAccessibilityLocationDescriptor]?) -> Self {
        return addAttributes(key: "accessibilityDragSourceDescriptors", value: value) {
            $0.accessibilityDragSourceDescriptors = value
        }
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func accessibilityDropPointDescriptors(_ value: [UIAccessibilityLocationDescriptor]?) -> Self {
        return addAttributes(key: "accessibilityDropPointDescriptors", value: value) {
            $0.accessibilityDropPointDescriptors = value
        }
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func accessibilityCustomRotors(_ value: [UIAccessibilityCustomRotor]?) -> Self {
        return addAttributes(key: "accessibilityCustomRotors", value: value) {
            $0.accessibilityCustomRotors = value
        }
    }

    @discardableResult
    public func accessibilityElements(_ value: [Any]?) -> Self {
        return addAttributes(key: "accessibilityElements", value: value) {
            $0.accessibilityElements = value
        }
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func accessibilityContainerType(_ value: UIAccessibilityContainerType) -> Self {
        return addAttributes(key: "accessibilityContainerType", value: value) {
            $0.accessibilityContainerType = value
        }
    }
}
