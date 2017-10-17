//
//  UIBarButtonItem.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

public protocol UIBarButtonItemConvertible {}

extension UIBarButtonItem: UIBarButtonItemConvertible {}
extension PandaChain: UIBarButtonItemConvertible {}

extension PandaChain where Object: UIBarButtonItem {
    @discardableResult
    public func style(_ value: UIBarButtonItemStyle) -> PandaChain {
        object.style = value
        return self
    }

    @discardableResult
    public func width(_ value: CGFloat) -> PandaChain {
        object.width = value
        return self
    }

    @discardableResult
    public func possibleTitles(_ value: Set<String>?) -> PandaChain {
        object.possibleTitles = value
        return self
    }

    @discardableResult
    public func customView(_ value: UIViewConvertible?) -> PandaChain {
        object.customView = unbox(value)
        return self
    }

    @discardableResult
    public func action(_ value: Selector?) -> PandaChain {
        object.action = value
        return self
    }

    @discardableResult
    public func target(_ value: AnyObject?) -> PandaChain {
        object.target = value
        return self
    }

    /// `tintColor`
    @discardableResult
    public func tint(_ value: UIColor?) -> PandaChain {
        object.tintColor = value
        return self
    }

    @available(*, deprecated, renamed: "tint()")
    @discardableResult
    public func tintColor(_ value: UIColor?) -> PandaChain {
        object.tintColor = value
        return self
    }

    /// `backgroundImage`
    @discardableResult
    public func background(_ backgroundImage: UIImage?, for state: UIControlState, barMetrics: UIBarMetrics) -> PandaChain {
        object.setBackgroundImage(backgroundImage, for: state, barMetrics: barMetrics)
        return self
    }

    @available(*, deprecated, renamed: "background()")
    @discardableResult
    public func backgroundImage(_ backgroundImage: UIImage?, for state: UIControlState, barMetrics: UIBarMetrics) -> PandaChain {
        object.setBackgroundImage(backgroundImage, for: state, barMetrics: barMetrics)
        return self
    }

    /// `backgroundImage`
    @discardableResult
    public func background(_ backgroundImage: UIImage?, for state: UIControlState, style: UIBarButtonItemStyle, barMetrics: UIBarMetrics) -> PandaChain {
        object.setBackgroundImage(backgroundImage, for: state, style: style, barMetrics: barMetrics)
        return self
    }

    @available(*, deprecated, renamed: "background()")
    @discardableResult
    public func backgroundImage(_ backgroundImage: UIImage?, for state: UIControlState, style: UIBarButtonItemStyle, barMetrics: UIBarMetrics) -> PandaChain {
        object.setBackgroundImage(backgroundImage, for: state, style: style, barMetrics: barMetrics)
        return self
    }

    /// `backgroundVerticalPositionAdjustment`
    @discardableResult
    public func backgroundVerticalPositionAdjust(_ adjustment: CGFloat, for barMetrics: UIBarMetrics) -> PandaChain {
        object.setBackgroundVerticalPositionAdjustment(adjustment, for: barMetrics)
        return self
    }

    @available(*, deprecated, renamed: "backgroundVerticalPositionAdjust()")
    @discardableResult
    public func backgroundVerticalPositionAdjustment(_ adjustment: CGFloat, for barMetrics: UIBarMetrics) -> PandaChain {
        object.setBackgroundVerticalPositionAdjustment(adjustment, for: barMetrics)
        return self
    }

    /// `titlePositionAdjustment`
    @discardableResult
    public func titlePositionAdjust(_ adjustment: UIOffset, for barMetrics: UIBarMetrics) -> PandaChain {
        object.setTitlePositionAdjustment(adjustment, for: barMetrics)
        return self
    }

    @available(*, deprecated, renamed: "titlePositionAdjust()")
    @discardableResult
    public func titlePositionAdjustment(_ adjustment: UIOffset, for barMetrics: UIBarMetrics) -> PandaChain {
        object.setTitlePositionAdjustment(adjustment, for: barMetrics)
        return self
    }

    /// `backButtonBackgroundImage`
    @discardableResult
    public func backButtonBackground(_ backgroundImage: UIImage?, for state: UIControlState, barMetrics: UIBarMetrics) -> PandaChain {
        object.setBackButtonBackgroundImage(backgroundImage, for: state, barMetrics: barMetrics)
        return self
    }

    @available(*, deprecated, renamed: "backButtonBackground()")
    @discardableResult
    public func backButtonBackgroundImage(_ backgroundImage: UIImage?, for state: UIControlState, barMetrics: UIBarMetrics) -> PandaChain {
        object.setBackButtonBackgroundImage(backgroundImage, for: state, barMetrics: barMetrics)
        return self
    }

    /// `backButtonTitlePositionAdjustment`
    @discardableResult
    public func backButtonTitlePositionAdjust(_ adjustment: UIOffset, for barMetrics: UIBarMetrics) -> PandaChain {
        object.setBackButtonTitlePositionAdjustment(adjustment, for: barMetrics)
        return self
    }

    @available(*, deprecated, renamed: "backButtonTitlePositionAdjust()")
    @discardableResult
    public func backButtonTitlePositionAdjustment(_ adjustment: UIOffset, for barMetrics: UIBarMetrics) -> PandaChain {
        object.setBackButtonTitlePositionAdjustment(adjustment, for: barMetrics)
        return self
    }

    /// `backButtonBackgroundVerticalPositionAdjustment`
    @discardableResult
    public func backButtonBackgroundVerticalPositionAdjust(_ adjustment: CGFloat, for barMetrics: UIBarMetrics) -> PandaChain {
        object.setBackButtonBackgroundVerticalPositionAdjustment(adjustment, for: barMetrics)
        return self
    }

    @available(*, deprecated, renamed: "backButtonBackgroundVerticalPositionAdjust()")
    @discardableResult
    public func backButtonBackgroundVerticalPositionAdjustment(_ adjustment: CGFloat, for barMetrics: UIBarMetrics) -> PandaChain {
        object.setBackButtonBackgroundVerticalPositionAdjustment(adjustment, for: barMetrics)
        return self
    }

    /// `backgroundVerticalPositionAdjustment`
    @discardableResult
    public func backgroundVerticalPositionAdjust(
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
            setter: object.setBackgroundVerticalPositionAdjustment
        )
    }

    @available(*, deprecated, renamed: "backgroundVerticalPositionAdjust()")
    @discardableResult
    public func backgroundVerticalPositionAdjustment(
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
            setter: object.setBackgroundVerticalPositionAdjustment
        )
    }

    /// `titlePositionAdjustment`
    @discardableResult
    public func titlePositionAdjust(
        _ d: UIOffset,
        compact: UIOffset? = nil,
        defaultPrompt: UIOffset? = nil,
        compactPrompt: UIOffset? = nil
    ) -> PandaChain {
        return forBarMetrics(
            default: d,
            compact: compact,
            defaultPrompt: defaultPrompt,
            compactPrompt: compactPrompt,
            setter: object.setTitlePositionAdjustment
        )
    }

    @available(*, deprecated, renamed: "titlePositionAdjust()")
    @discardableResult
    public func titlePositionAdjustment(
        _ d: UIOffset,
        compact: UIOffset? = nil,
        defaultPrompt: UIOffset? = nil,
        compactPrompt: UIOffset? = nil
    ) -> PandaChain {
        return forBarMetrics(
            default: d,
            compact: compact,
            defaultPrompt: defaultPrompt,
            compactPrompt: compactPrompt,
            setter: object.setTitlePositionAdjustment
        )
    }

    /// `backButtonTitlePositionAdjustment`
    @discardableResult
    public func backButtonTitlePositionAdjust(
        _ d: UIOffset,
        compact: UIOffset? = nil,
        defaultPrompt: UIOffset? = nil,
        compactPrompt: UIOffset? = nil
    ) -> PandaChain {
        return forBarMetrics(
            default: d,
            compact: compact,
            defaultPrompt: defaultPrompt,
            compactPrompt: compactPrompt,
            setter: object.setBackButtonTitlePositionAdjustment
        )
    }

    @available(*, deprecated, renamed: "backButtonTitlePositionAdjust()")
    @discardableResult
    public func backButtonTitlePositionAdjustment(
        _ d: UIOffset,
        compact: UIOffset? = nil,
        defaultPrompt: UIOffset? = nil,
        compactPrompt: UIOffset? = nil
    ) -> PandaChain {
        return forBarMetrics(
            default: d,
            compact: compact,
            defaultPrompt: defaultPrompt,
            compactPrompt: compactPrompt,
            setter: object.setBackButtonTitlePositionAdjustment
        )
    }

    /// `backButtonBackgroundVerticalPositionAdjustment`
    @discardableResult
    public func backButtonBackgroundVerticalPositionAdjust(
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
            setter: object.setBackButtonBackgroundVerticalPositionAdjustment
        )
    }

    @available(*, deprecated, renamed: "backButtonBackgroundVerticalPositionAdjust()")
    @discardableResult
    public func backButtonBackgroundVerticalPositionAdjustment(
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
            setter: object.setBackButtonBackgroundVerticalPositionAdjustment
        )
    }
}
