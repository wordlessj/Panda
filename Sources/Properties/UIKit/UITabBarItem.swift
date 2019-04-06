//
//  UITabBarItem.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

public protocol UITabBarItemConvertible {}

extension UITabBarItem: UITabBarItemConvertible {}
extension PandaChain: UITabBarItemConvertible {}

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
    public func badgeTextAttributes(_ textAttributes: [NSAttributedString.Key : Any]?, for state: UIControl.State) -> PandaChain {
        object.setBadgeTextAttributes(textAttributes, for: state)
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func badgeTextAttributes(
        _ normal: [NSAttributedString.Key : Any],
        highlighted: [NSAttributedString.Key : Any]? = nil,
        selected: [NSAttributedString.Key : Any]? = nil,
        disabled: [NSAttributedString.Key : Any]? = nil
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
