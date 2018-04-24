//
//  UISegmentedControl.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UISegmentedControl {
    @discardableResult
    public func momentary(_ value: Bool) -> Self {
        return addAttributes(key: "isMomentary", value: value) {
            $0.isMomentary = value
        }
    }

    @discardableResult
    public func apportionsSegmentWidthsByContent(_ value: Bool) -> Self {
        return addAttributes(key: "apportionsSegmentWidthsByContent", value: value) {
            $0.apportionsSegmentWidthsByContent = value
        }
    }

    @discardableResult
    public func selectedSegmentIndex(_ value: Int) -> Self {
        return addAttributes(key: "selectedSegmentIndex", value: value) {
            $0.selectedSegmentIndex = value
        }
    }

    @discardableResult
    public func tintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "tintColor", value: value) {
            $0.tintColor = value
        }
    }

    @discardableResult
    public func titleTextAttributes(_ value: [AnyHashable: Any]?) -> Self {
        return addAttributes(key: "titleTextAttributesNormal", value: value) {
            $0.setTitleTextAttributes(value, for: .normal)
        }
    }

    @discardableResult
    public func titleTextAttributesHighlighted(_ value: [AnyHashable: Any]?) -> Self {
        return addAttributes(key: "titleTextAttributesHighlighted", value: value) {
            $0.setTitleTextAttributes(value, for: .highlighted)
        }
    }

    @discardableResult
    public func titleTextAttributesSelected(_ value: [AnyHashable: Any]?) -> Self {
        return addAttributes(key: "titleTextAttributesSelected", value: value) {
            $0.setTitleTextAttributes(value, for: .selected)
        }
    }

    @discardableResult
    public func titleTextAttributesDisabled(_ value: [AnyHashable: Any]?) -> Self {
        return addAttributes(key: "titleTextAttributesDisabled", value: value) {
            $0.setTitleTextAttributes(value, for: .disabled)
        }
    }
}
