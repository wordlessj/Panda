//
//  UINavigationBar.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UINavigationBar {
    @discardableResult
    public func barStyle(_ value: UIBarStyle) -> PandaChain {
        object.barStyle = value
        return self
    }

    @discardableResult
    public func delegate(_ value: UINavigationBarDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func isTranslucent(_ value: Bool) -> PandaChain {
        object.isTranslucent = value
        return self
    }

    @discardableResult
    public func items(_ value: [UINavigationItem]?) -> PandaChain {
        object.items = value
        return self
    }

    @discardableResult
    public func tintColor(_ value: UIColor?) -> PandaChain {
        object.tintColor = value
        return self
    }

    @discardableResult
    public func barTintColor(_ value: UIColor?) -> PandaChain {
        object.barTintColor = value
        return self
    }

    @discardableResult
    public func shadowImage(_ value: UIImage?) -> PandaChain {
        object.shadowImage = value
        return self
    }

    @discardableResult
    public func titleTextAttributes(_ value: [String: Any]?) -> PandaChain {
        object.titleTextAttributes = value
        return self
    }

    @discardableResult
    public func backIndicatorImage(_ value: UIImage?) -> PandaChain {
        object.backIndicatorImage = value
        return self
    }

    @discardableResult
    public func backIndicatorTransitionMaskImage(_ value: UIImage?) -> PandaChain {
        object.backIndicatorTransitionMaskImage = value
        return self
    }

    @discardableResult
    public func items(_ items: [UINavigationItem]?, animated: Bool) -> PandaChain {
        object.setItems(items, animated: animated)
        return self
    }

    @discardableResult
    public func backgroundImage(_ backgroundImage: UIImage?, for barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> PandaChain {
        object.setBackgroundImage(backgroundImage, for: barPosition, barMetrics: barMetrics)
        return self
    }

    @discardableResult
    public func backgroundImage(_ backgroundImage: UIImage?, for barMetrics: UIBarMetrics) -> PandaChain {
        object.setBackgroundImage(backgroundImage, for: barMetrics)
        return self
    }

    @discardableResult
    public func titleVerticalPositionAdjustment(_ adjustment: CGFloat, for barMetrics: UIBarMetrics) -> PandaChain {
        object.setTitleVerticalPositionAdjustment(adjustment, for: barMetrics)
        return self
    }

    @discardableResult
    public func backgroundImage(
        _ d: UIImage,
        compact: UIImage? = nil,
        defaultPrompt: UIImage? = nil,
        compactPrompt: UIImage? = nil
    ) -> PandaChain {
        return forBarMetrics(
            default: d,
            compact: compact,
            defaultPrompt: defaultPrompt,
            compactPrompt: compactPrompt,
            setter: object.setBackgroundImage
        )
    }

    @discardableResult
    public func titleVerticalPositionAdjustment(
        _ d: CGFloat,
        compact: CGFloat? = nil,
        defaultPrompt: CGFloat? = nil,
        compactPrompt: CGFloat? = nil
    ) -> PandaChain {
        return forBarMetrics(
            default: d,
            compact: compact,
            defaultPrompt: defaultPrompt,
            compactPrompt: compactPrompt,
            setter: object.setTitleVerticalPositionAdjustment
        )
    }
}
