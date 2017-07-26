//
//  UISlider.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UISlider {
    @discardableResult
    public func value(_ value: Float) -> PandaChain {
        object.value = value
        return self
    }

    /// `minimumValue`
    @discardableResult
    public func minValue(_ value: Float) -> PandaChain {
        object.minimumValue = value
        return self
    }

    @available(*, deprecated, renamed: "minValue()")
    @discardableResult
    public func minimumValue(_ value: Float) -> PandaChain {
        object.minimumValue = value
        return self
    }

    /// `maximumValue`
    @discardableResult
    public func maxValue(_ value: Float) -> PandaChain {
        object.maximumValue = value
        return self
    }

    @available(*, deprecated, renamed: "maxValue()")
    @discardableResult
    public func maximumValue(_ value: Float) -> PandaChain {
        object.maximumValue = value
        return self
    }

    /// `minimumValueImage`
    @discardableResult
    public func minValueImage(_ value: UIImage?) -> PandaChain {
        object.minimumValueImage = value
        return self
    }

    @available(*, deprecated, renamed: "minValueImage()")
    @discardableResult
    public func minimumValueImage(_ value: UIImage?) -> PandaChain {
        object.minimumValueImage = value
        return self
    }

    /// `maximumValueImage`
    @discardableResult
    public func maxValueImage(_ value: UIImage?) -> PandaChain {
        object.maximumValueImage = value
        return self
    }

    @available(*, deprecated, renamed: "maxValueImage()")
    @discardableResult
    public func maximumValueImage(_ value: UIImage?) -> PandaChain {
        object.maximumValueImage = value
        return self
    }

    @discardableResult
    public func continuous(_ value: Bool) -> PandaChain {
        object.isContinuous = value
        return self
    }

    /// `minimumTrackTintColor`
    @discardableResult
    public func minTrackTint(_ value: UIColor?) -> PandaChain {
        object.minimumTrackTintColor = value
        return self
    }

    @available(*, deprecated, renamed: "minTrackTint()")
    @discardableResult
    public func minimumTrackTintColor(_ value: UIColor?) -> PandaChain {
        object.minimumTrackTintColor = value
        return self
    }

    /// `maximumTrackTintColor`
    @discardableResult
    public func maxTrackTint(_ value: UIColor?) -> PandaChain {
        object.maximumTrackTintColor = value
        return self
    }

    @available(*, deprecated, renamed: "maxTrackTint()")
    @discardableResult
    public func maximumTrackTintColor(_ value: UIColor?) -> PandaChain {
        object.maximumTrackTintColor = value
        return self
    }

    /// `thumbTintColor`
    @discardableResult
    public func thumbTint(_ value: UIColor?) -> PandaChain {
        object.thumbTintColor = value
        return self
    }

    @available(*, deprecated, renamed: "thumbTint()")
    @discardableResult
    public func thumbTintColor(_ value: UIColor?) -> PandaChain {
        object.thumbTintColor = value
        return self
    }

    @discardableResult
    public func value(_ value: Float, animated: Bool) -> PandaChain {
        object.setValue(value, animated: animated)
        return self
    }

    @discardableResult
    public func thumbImage(_ image: UIImage?, for state: UIControlState) -> PandaChain {
        object.setThumbImage(image, for: state)
        return self
    }

    /// `minimumTrackImage`
    @discardableResult
    public func minTrackImage(_ image: UIImage?, for state: UIControlState) -> PandaChain {
        object.setMinimumTrackImage(image, for: state)
        return self
    }

    @available(*, deprecated, renamed: "minTrackImage()")
    @discardableResult
    public func minimumTrackImage(_ image: UIImage?, for state: UIControlState) -> PandaChain {
        object.setMinimumTrackImage(image, for: state)
        return self
    }

    /// `maximumTrackImage`
    @discardableResult
    public func maxTrackImage(_ image: UIImage?, for state: UIControlState) -> PandaChain {
        object.setMaximumTrackImage(image, for: state)
        return self
    }

    @available(*, deprecated, renamed: "maxTrackImage()")
    @discardableResult
    public func maximumTrackImage(_ image: UIImage?, for state: UIControlState) -> PandaChain {
        object.setMaximumTrackImage(image, for: state)
        return self
    }

    @discardableResult
    public func thumbImage(
        _ normal: UIImage,
        highlighted: UIImage? = nil,
        selected: UIImage? = nil,
        disabled: UIImage? = nil
    ) -> PandaChain {
        return forControlState(
            normal: normal,
            highlighted: highlighted,
            selected: selected,
            disabled: disabled,
            setter: object.setThumbImage
        )
    }

    /// `minimumTrackImage`
    @discardableResult
    public func minTrackImage(
        _ normal: UIImage,
        highlighted: UIImage? = nil,
        selected: UIImage? = nil,
        disabled: UIImage? = nil
    ) -> PandaChain {
        return forControlState(
            normal: normal,
            highlighted: highlighted,
            selected: selected,
            disabled: disabled,
            setter: object.setMinimumTrackImage
        )
    }

    @available(*, deprecated, renamed: "minTrackImage()")
    @discardableResult
    public func minimumTrackImage(
        _ normal: UIImage,
        highlighted: UIImage? = nil,
        selected: UIImage? = nil,
        disabled: UIImage? = nil
    ) -> PandaChain {
        return forControlState(
            normal: normal,
            highlighted: highlighted,
            selected: selected,
            disabled: disabled,
            setter: object.setMinimumTrackImage
        )
    }

    /// `maximumTrackImage`
    @discardableResult
    public func maxTrackImage(
        _ normal: UIImage,
        highlighted: UIImage? = nil,
        selected: UIImage? = nil,
        disabled: UIImage? = nil
    ) -> PandaChain {
        return forControlState(
            normal: normal,
            highlighted: highlighted,
            selected: selected,
            disabled: disabled,
            setter: object.setMaximumTrackImage
        )
    }

    @available(*, deprecated, renamed: "maxTrackImage()")
    @discardableResult
    public func maximumTrackImage(
        _ normal: UIImage,
        highlighted: UIImage? = nil,
        selected: UIImage? = nil,
        disabled: UIImage? = nil
    ) -> PandaChain {
        return forControlState(
            normal: normal,
            highlighted: highlighted,
            selected: selected,
            disabled: disabled,
            setter: object.setMaximumTrackImage
        )
    }
}
