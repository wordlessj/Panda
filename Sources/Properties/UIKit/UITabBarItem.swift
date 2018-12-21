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
    public func badgeTextAttributes(_ textAttributes: [String: Any]?, for state: UIControl.State) -> PandaChain {
        object.setBadgeTextAttributes(convertToOptionalNSAttributedStringKeyDictionary(textAttributes), for: state)
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func badgeTextAttributes(
        _ normal: [NSAttributedString.Key: Any],
        highlighted: [NSAttributedString.Key: Any]? = nil,
        selected: [NSAttributedString.Key: Any]? = nil,
        disabled: [NSAttributedString.Key: Any]? = nil
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

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToOptionalNSAttributedStringKeyDictionary(_ input: [String: Any]?) -> [NSAttributedString.Key: Any]? {
	guard let input = input else { return nil }
	return Dictionary(uniqueKeysWithValues: input.map { key, value in (NSAttributedString.Key(rawValue: key), value)})
}
