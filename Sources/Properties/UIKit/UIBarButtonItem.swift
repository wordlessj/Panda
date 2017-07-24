//
//  UIBarButtonItem.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

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
    public func customView(_ value: UIView?) -> PandaChain {
        object.customView = value
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

    @discardableResult
    public func tintColor(_ value: UIColor?) -> PandaChain {
        object.tintColor = value
        return self
    }

    @discardableResult
    public func backgroundImage(_ backgroundImage: UIImage?, for state: UIControlState, barMetrics: UIBarMetrics) -> PandaChain {
        object.setBackgroundImage(backgroundImage, for: state, barMetrics: barMetrics)
        return self
    }

    @discardableResult
    public func backgroundImage(_ backgroundImage: UIImage?, for state: UIControlState, style: UIBarButtonItemStyle, barMetrics: UIBarMetrics) -> PandaChain {
        object.setBackgroundImage(backgroundImage, for: state, style: style, barMetrics: barMetrics)
        return self
    }

    @discardableResult
    public func backgroundVerticalPositionAdjustment(_ adjustment: CGFloat, for barMetrics: UIBarMetrics) -> PandaChain {
        object.setBackgroundVerticalPositionAdjustment(adjustment, for: barMetrics)
        return self
    }

    @discardableResult
    public func titlePositionAdjustment(_ adjustment: UIOffset, for barMetrics: UIBarMetrics) -> PandaChain {
        object.setTitlePositionAdjustment(adjustment, for: barMetrics)
        return self
    }

    @discardableResult
    public func backButtonBackgroundImage(_ backgroundImage: UIImage?, for state: UIControlState, barMetrics: UIBarMetrics) -> PandaChain {
        object.setBackButtonBackgroundImage(backgroundImage, for: state, barMetrics: barMetrics)
        return self
    }

    @discardableResult
    public func backButtonTitlePositionAdjustment(_ adjustment: UIOffset, for barMetrics: UIBarMetrics) -> PandaChain {
        object.setBackButtonTitlePositionAdjustment(adjustment, for: barMetrics)
        return self
    }

    @discardableResult
    public func backButtonBackgroundVerticalPositionAdjustment(_ adjustment: CGFloat, for barMetrics: UIBarMetrics) -> PandaChain {
        object.setBackButtonBackgroundVerticalPositionAdjustment(adjustment, for: barMetrics)
        return self
    }

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
