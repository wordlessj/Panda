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

    /// `tintColor`
    @discardableResult
    public func tint(_ value: UIColor?) -> Self {
        return addAttributes(key: "tintColor", value: value) {
            $0.tintColor = value
        }
    }

    @available(*, deprecated, renamed: "tint()")
    @discardableResult
    public func tintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "tintColor", value: value) {
            $0.tintColor = value
        }
    }

    /// `titleTextAttributes`
    @discardableResult
    public func titleAttributes(_ value: [AnyHashable: Any]?) -> Self {
        return addAttributes(key: "titleTextAttributesNormal", value: value) {
            $0.setTitleTextAttributes(value, for: .normal)
        }
    }

    @available(*, deprecated, renamed: "titleAttributes()")
    @discardableResult
    public func titleTextAttributes(_ value: [AnyHashable: Any]?) -> Self {
        return addAttributes(key: "titleTextAttributesNormal", value: value) {
            $0.setTitleTextAttributes(value, for: .normal)
        }
    }

    /// `titleTextAttributesHighlighted`
    @discardableResult
    public func titleAttributesHighlighted(_ value: [AnyHashable: Any]?) -> Self {
        return addAttributes(key: "titleTextAttributesHighlighted", value: value) {
            $0.setTitleTextAttributes(value, for: .highlighted)
        }
    }

    @available(*, deprecated, renamed: "titleAttributesHighlighted()")
    @discardableResult
    public func titleTextAttributesHighlighted(_ value: [AnyHashable: Any]?) -> Self {
        return addAttributes(key: "titleTextAttributesHighlighted", value: value) {
            $0.setTitleTextAttributes(value, for: .highlighted)
        }
    }

    /// `titleTextAttributesSelected`
    @discardableResult
    public func titleAttributesSelected(_ value: [AnyHashable: Any]?) -> Self {
        return addAttributes(key: "titleTextAttributesSelected", value: value) {
            $0.setTitleTextAttributes(value, for: .selected)
        }
    }

    @available(*, deprecated, renamed: "titleAttributesSelected()")
    @discardableResult
    public func titleTextAttributesSelected(_ value: [AnyHashable: Any]?) -> Self {
        return addAttributes(key: "titleTextAttributesSelected", value: value) {
            $0.setTitleTextAttributes(value, for: .selected)
        }
    }

    /// `titleTextAttributesDisabled`
    @discardableResult
    public func titleAttributesDisabled(_ value: [AnyHashable: Any]?) -> Self {
        return addAttributes(key: "titleTextAttributesDisabled", value: value) {
            $0.setTitleTextAttributes(value, for: .disabled)
        }
    }

    @available(*, deprecated, renamed: "titleAttributesDisabled()")
    @discardableResult
    public func titleTextAttributesDisabled(_ value: [AnyHashable: Any]?) -> Self {
        return addAttributes(key: "titleTextAttributesDisabled", value: value) {
            $0.setTitleTextAttributes(value, for: .disabled)
        }
    }
}
