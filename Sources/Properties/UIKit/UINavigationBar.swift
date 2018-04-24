//
//  UINavigationBar.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UINavigationBar {
    @discardableResult
    public func barStyle(_ value: UIBarStyle) -> Self {
        return addAttributes(key: "barStyle", value: value) {
            $0.barStyle = value
        }
    }

    @discardableResult
    public func delegate(_ value: UINavigationBarDelegate?) -> Self {
        return addAttributes(key: "delegate", value: value) {
            $0.delegate = value
        }
    }

    @discardableResult
    public func translucent(_ value: Bool) -> Self {
        return addAttributes(key: "isTranslucent", value: value) {
            $0.isTranslucent = value
        }
    }

    @discardableResult
    public func items(_ value: [UINavigationItem]?) -> Self {
        return addAttributes(key: "items", value: value) {
            $0.items = value
        }
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func prefersLargeTitles(_ value: Bool) -> Self {
        return addAttributes(key: "prefersLargeTitles", value: value) {
            $0.prefersLargeTitles = value
        }
    }

    @discardableResult
    public func tintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "tintColor", value: value) {
            $0.tintColor = value
        }
    }

    @discardableResult
    public func barTintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "barTintColor", value: value) {
            $0.barTintColor = value
        }
    }

    @discardableResult
    public func shadowImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "shadowImage", value: value) {
            $0.shadowImage = value
        }
    }

    @discardableResult
    public func titleTextAttributes(_ value: [NSAttributedStringKey: Any]?) -> Self {
        return addAttributes(key: "titleTextAttributes", value: value) {
            $0.titleTextAttributes = value
        }
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func largeTitleTextAttributes(_ value: [NSAttributedStringKey: Any]?) -> Self {
        return addAttributes(key: "largeTitleTextAttributes", value: value) {
            $0.largeTitleTextAttributes = value
        }
    }

    @discardableResult
    public func backIndicatorImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "backIndicatorImage", value: value) {
            $0.backIndicatorImage = value
        }
    }

    @discardableResult
    public func backIndicatorTransitionMaskImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "backIndicatorTransitionMaskImage", value: value) {
            $0.backIndicatorTransitionMaskImage = value
        }
    }

    @discardableResult
    public func backgroundImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImageDefault", value: value) {
            $0.setBackgroundImage(value, for: .default)
        }
    }

    @discardableResult
    public func backgroundImageCompact(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImageCompact", value: value) {
            $0.setBackgroundImage(value, for: .compact)
        }
    }

    @discardableResult
    public func backgroundImageDefaultPrompt(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImageDefaultPrompt", value: value) {
            $0.setBackgroundImage(value, for: .defaultPrompt)
        }
    }

    @discardableResult
    public func backgroundImageCompactPrompt(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImageCompactPrompt", value: value) {
            $0.setBackgroundImage(value, for: .compactPrompt)
        }
    }

    @discardableResult
    public func titleVerticalPositionAdjustment(_ value: CGFloat) -> Self {
        return addAttributes(key: "titleVerticalPositionAdjustmentDefault", value: value) {
            $0.setTitleVerticalPositionAdjustment(value, for: .default)
        }
    }

    @discardableResult
    public func titleVerticalPositionAdjustmentCompact(_ value: CGFloat) -> Self {
        return addAttributes(key: "titleVerticalPositionAdjustmentCompact", value: value) {
            $0.setTitleVerticalPositionAdjustment(value, for: .compact)
        }
    }

    @discardableResult
    public func titleVerticalPositionAdjustmentDefaultPrompt(_ value: CGFloat) -> Self {
        return addAttributes(key: "titleVerticalPositionAdjustmentDefaultPrompt", value: value) {
            $0.setTitleVerticalPositionAdjustment(value, for: .defaultPrompt)
        }
    }

    @discardableResult
    public func titleVerticalPositionAdjustmentCompactPrompt(_ value: CGFloat) -> Self {
        return addAttributes(key: "titleVerticalPositionAdjustmentCompactPrompt", value: value) {
            $0.setTitleVerticalPositionAdjustment(value, for: .compactPrompt)
        }
    }
}
