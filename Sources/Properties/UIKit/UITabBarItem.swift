//
//  UITabBarItem.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UITabBarItem {
    @discardableResult
    public func selectedImage(_ value: UIImage?) -> PandaChain {
        object.selectedImage = value
        return self
    }

    @discardableResult
    public func badgeValue(_ value: String?) -> PandaChain {
        object.badgeValue = value
        return self
    }

    /// `titlePositionAdjustment`
    @discardableResult
    public func titlePositionAdjust(_ value: UIOffset) -> PandaChain {
        object.titlePositionAdjustment = value
        return self
    }

    @available(*, deprecated, renamed: "titlePositionAdjust()")
    @discardableResult
    public func titlePositionAdjustment(_ value: UIOffset) -> PandaChain {
        object.titlePositionAdjustment = value
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func badgeColor(_ value: UIColor?) -> PandaChain {
        object.badgeColor = value
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func badgeTextAttributes(_ textAttributes: [String: Any]?, for state: UIControlState) -> PandaChain {
        object.setBadgeTextAttributes(textAttributes, for: state)
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func badgeTextAttributes(
        _ normal: [String: Any],
        highlighted: [String: Any]? = nil,
        selected: [String: Any]? = nil,
        disabled: [String: Any]? = nil
    ) -> PandaChain {
        return forControlState(
            normal: normal,
            highlighted: highlighted,
            selected: selected,
            disabled: disabled,
            setter: object.setBadgeTextAttributes
        )
    }
}
