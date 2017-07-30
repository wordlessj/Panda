//
//  UISegmentedControl.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UISegmentedControl {
    @discardableResult
    public func momentary(_ value: Bool) -> PandaChain {
        object.isMomentary = value
        return self
    }

    @discardableResult
    public func apportionsSegmentWidthsByContent(_ value: Bool) -> PandaChain {
        object.apportionsSegmentWidthsByContent = value
        return self
    }

    @discardableResult
    public func selectedSegmentIndex(_ value: Int) -> PandaChain {
        object.selectedSegmentIndex = value
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

    @discardableResult
    public func title(_ title: String?, forSegmentAt segment: Int) -> PandaChain {
        object.setTitle(title, forSegmentAt: segment)
        return self
    }

    @discardableResult
    public func image(_ image: UIImage?, forSegmentAt segment: Int) -> PandaChain {
        object.setImage(image, forSegmentAt: segment)
        return self
    }

    @discardableResult
    public func width(_ width: CGFloat, forSegmentAt segment: Int) -> PandaChain {
        object.setWidth(width, forSegmentAt: segment)
        return self
    }

    @discardableResult
    public func contentOffset(_ offset: CGSize, forSegmentAt segment: Int) -> PandaChain {
        object.setContentOffset(offset, forSegmentAt: segment)
        return self
    }

    @discardableResult
    public func enabled(_ enabled: Bool, forSegmentAt segment: Int) -> PandaChain {
        object.setEnabled(enabled, forSegmentAt: segment)
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

    @discardableResult
    public func dividerImage(_ dividerImage: UIImage?, forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState, barMetrics: UIBarMetrics) -> PandaChain {
        object.setDividerImage(dividerImage, forLeftSegmentState: leftState, rightSegmentState: rightState, barMetrics: barMetrics)
        return self
    }

    /// `titleTextAttributes`
    @discardableResult
    public func titleAttributes(_ attributes: [AnyHashable: Any]?, for state: UIControlState) -> PandaChain {
        object.setTitleTextAttributes(attributes, for: state)
        return self
    }

    @available(*, deprecated, renamed: "titleAttributes()")
    @discardableResult
    public func titleTextAttributes(_ attributes: [AnyHashable: Any]?, for state: UIControlState) -> PandaChain {
        object.setTitleTextAttributes(attributes, for: state)
        return self
    }

    /// `contentPositionAdjustment`
    @discardableResult
    public func contentPositionAdjust(_ adjustment: UIOffset, forSegmentType leftCenterRightOrAlone: UISegmentedControlSegment, barMetrics: UIBarMetrics) -> PandaChain {
        object.setContentPositionAdjustment(adjustment, forSegmentType: leftCenterRightOrAlone, barMetrics: barMetrics)
        return self
    }

    @available(*, deprecated, renamed: "contentPositionAdjust()")
    @discardableResult
    public func contentPositionAdjustment(_ adjustment: UIOffset, forSegmentType leftCenterRightOrAlone: UISegmentedControlSegment, barMetrics: UIBarMetrics) -> PandaChain {
        object.setContentPositionAdjustment(adjustment, forSegmentType: leftCenterRightOrAlone, barMetrics: barMetrics)
        return self
    }

    /// `titleTextAttributes`
    @discardableResult
    public func titleAttributes(
        _ normal: [AnyHashable: Any],
        highlighted: [AnyHashable: Any]? = nil,
        selected: [AnyHashable: Any]? = nil,
        disabled: [AnyHashable: Any]? = nil
    ) -> PandaChain {
        return forControlState(
            normal: normal,
            highlighted: highlighted,
            selected: selected,
            disabled: disabled,
            setter: object.setTitleTextAttributes
        )
    }

    @available(*, deprecated, renamed: "titleAttributes()")
    @discardableResult
    public func titleTextAttributes(
        _ normal: [AnyHashable: Any],
        highlighted: [AnyHashable: Any]? = nil,
        selected: [AnyHashable: Any]? = nil,
        disabled: [AnyHashable: Any]? = nil
    ) -> PandaChain {
        return forControlState(
            normal: normal,
            highlighted: highlighted,
            selected: selected,
            disabled: disabled,
            setter: object.setTitleTextAttributes
        )
    }
}
