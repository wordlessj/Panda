//
//  UINavigationBar.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UINavigationBar {
    /// `barStyle`
    @discardableResult
    public func style(_ value: UIBarStyle) -> Self {
        return addAttributes(key: "barStyle", value: value) {
            $0.barStyle = value
        }
    }

    @available(*, deprecated, renamed: "style()")
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

    /// `barTintColor`
    @discardableResult
    public func barTint(_ value: UIColor?) -> Self {
        return addAttributes(key: "barTintColor", value: value) {
            $0.barTintColor = value
        }
    }

    @available(*, deprecated, renamed: "barTint()")
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

    /// `titleTextAttributes`
    @discardableResult
    public func titleAttributes(_ value: [NSAttributedStringKey: Any]?) -> Self {
        return addAttributes(key: "titleTextAttributes", value: value) {
            $0.titleTextAttributes = value
        }
    }

    @available(*, deprecated, renamed: "titleAttributes()")
    @discardableResult
    public func titleTextAttributes(_ value: [NSAttributedStringKey: Any]?) -> Self {
        return addAttributes(key: "titleTextAttributes", value: value) {
            $0.titleTextAttributes = value
        }
    }

    /// `largeTitleTextAttributes`
    @available(iOS 11.0, *)
    @discardableResult
    public func largeTitleAttributes(_ value: [NSAttributedStringKey: Any]?) -> Self {
        return addAttributes(key: "largeTitleTextAttributes", value: value) {
            $0.largeTitleTextAttributes = value
        }
    }

    @available(*, deprecated, renamed: "largeTitleAttributes()")
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

    /// `backgroundImage`
    @discardableResult
    public func background(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImageDefault", value: value) {
            $0.setBackgroundImage(value, for: .default)
        }
    }

    @available(*, deprecated, renamed: "background()")
    @discardableResult
    public func backgroundImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImageDefault", value: value) {
            $0.setBackgroundImage(value, for: .default)
        }
    }

    /// `backgroundImageCompact`
    @discardableResult
    public func backgroundCompact(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImageCompact", value: value) {
            $0.setBackgroundImage(value, for: .compact)
        }
    }

    @available(*, deprecated, renamed: "backgroundCompact()")
    @discardableResult
    public func backgroundImageCompact(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImageCompact", value: value) {
            $0.setBackgroundImage(value, for: .compact)
        }
    }

    /// `backgroundImageDefaultPrompt`
    @discardableResult
    public func backgroundDefaultPrompt(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImageDefaultPrompt", value: value) {
            $0.setBackgroundImage(value, for: .defaultPrompt)
        }
    }

    @available(*, deprecated, renamed: "backgroundDefaultPrompt()")
    @discardableResult
    public func backgroundImageDefaultPrompt(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImageDefaultPrompt", value: value) {
            $0.setBackgroundImage(value, for: .defaultPrompt)
        }
    }

    /// `backgroundImageCompactPrompt`
    @discardableResult
    public func backgroundCompactPrompt(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImageCompactPrompt", value: value) {
            $0.setBackgroundImage(value, for: .compactPrompt)
        }
    }

    @available(*, deprecated, renamed: "backgroundCompactPrompt()")
    @discardableResult
    public func backgroundImageCompactPrompt(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImageCompactPrompt", value: value) {
            $0.setBackgroundImage(value, for: .compactPrompt)
        }
    }

    /// `titleVerticalPositionAdjustment`
    @discardableResult
    public func titleVerticalPositionAdjust(_ value: CGFloat) -> Self {
        return addAttributes(key: "titleVerticalPositionAdjustmentDefault", value: value) {
            $0.setTitleVerticalPositionAdjustment(value, for: .default)
        }
    }

    @available(*, deprecated, renamed: "titleVerticalPositionAdjust()")
    @discardableResult
    public func titleVerticalPositionAdjustment(_ value: CGFloat) -> Self {
        return addAttributes(key: "titleVerticalPositionAdjustmentDefault", value: value) {
            $0.setTitleVerticalPositionAdjustment(value, for: .default)
        }
    }

    /// `titleVerticalPositionAdjustmentCompact`
    @discardableResult
    public func titleVerticalPositionAdjustCompact(_ value: CGFloat) -> Self {
        return addAttributes(key: "titleVerticalPositionAdjustmentCompact", value: value) {
            $0.setTitleVerticalPositionAdjustment(value, for: .compact)
        }
    }

    @available(*, deprecated, renamed: "titleVerticalPositionAdjustCompact()")
    @discardableResult
    public func titleVerticalPositionAdjustmentCompact(_ value: CGFloat) -> Self {
        return addAttributes(key: "titleVerticalPositionAdjustmentCompact", value: value) {
            $0.setTitleVerticalPositionAdjustment(value, for: .compact)
        }
    }

    /// `titleVerticalPositionAdjustmentDefaultPrompt`
    @discardableResult
    public func titleVerticalPositionAdjustDefaultPrompt(_ value: CGFloat) -> Self {
        return addAttributes(key: "titleVerticalPositionAdjustmentDefaultPrompt", value: value) {
            $0.setTitleVerticalPositionAdjustment(value, for: .defaultPrompt)
        }
    }

    @available(*, deprecated, renamed: "titleVerticalPositionAdjustDefaultPrompt()")
    @discardableResult
    public func titleVerticalPositionAdjustmentDefaultPrompt(_ value: CGFloat) -> Self {
        return addAttributes(key: "titleVerticalPositionAdjustmentDefaultPrompt", value: value) {
            $0.setTitleVerticalPositionAdjustment(value, for: .defaultPrompt)
        }
    }

    /// `titleVerticalPositionAdjustmentCompactPrompt`
    @discardableResult
    public func titleVerticalPositionAdjustCompactPrompt(_ value: CGFloat) -> Self {
        return addAttributes(key: "titleVerticalPositionAdjustmentCompactPrompt", value: value) {
            $0.setTitleVerticalPositionAdjustment(value, for: .compactPrompt)
        }
    }

    @available(*, deprecated, renamed: "titleVerticalPositionAdjustCompactPrompt()")
    @discardableResult
    public func titleVerticalPositionAdjustmentCompactPrompt(_ value: CGFloat) -> Self {
        return addAttributes(key: "titleVerticalPositionAdjustmentCompactPrompt", value: value) {
            $0.setTitleVerticalPositionAdjustment(value, for: .compactPrompt)
        }
    }
}
