//
//  UISlider.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UISlider {
    @discardableResult
    public func value(_ value: Float) -> Self {
        return addAttributes(key: "value", value: value) {
            $0.value = value
        }
    }

    /// `minimumValue`
    @discardableResult
    public func minValue(_ value: Float) -> Self {
        return addAttributes(key: "minimumValue", value: value) {
            $0.minimumValue = value
        }
    }

    @available(*, deprecated, renamed: "minValue()")
    @discardableResult
    public func minimumValue(_ value: Float) -> Self {
        return addAttributes(key: "minimumValue", value: value) {
            $0.minimumValue = value
        }
    }

    /// `maximumValue`
    @discardableResult
    public func maxValue(_ value: Float) -> Self {
        return addAttributes(key: "maximumValue", value: value) {
            $0.maximumValue = value
        }
    }

    @available(*, deprecated, renamed: "maxValue()")
    @discardableResult
    public func maximumValue(_ value: Float) -> Self {
        return addAttributes(key: "maximumValue", value: value) {
            $0.maximumValue = value
        }
    }

    /// `minimumValueImage`
    @discardableResult
    public func minValueImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "minimumValueImage", value: value) {
            $0.minimumValueImage = value
        }
    }

    @available(*, deprecated, renamed: "minValueImage()")
    @discardableResult
    public func minimumValueImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "minimumValueImage", value: value) {
            $0.minimumValueImage = value
        }
    }

    /// `maximumValueImage`
    @discardableResult
    public func maxValueImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "maximumValueImage", value: value) {
            $0.maximumValueImage = value
        }
    }

    @available(*, deprecated, renamed: "maxValueImage()")
    @discardableResult
    public func maximumValueImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "maximumValueImage", value: value) {
            $0.maximumValueImage = value
        }
    }

    @discardableResult
    public func continuous(_ value: Bool) -> Self {
        return addAttributes(key: "isContinuous", value: value) {
            $0.isContinuous = value
        }
    }

    /// `minimumTrackTintColor`
    @discardableResult
    public func minTrackTint(_ value: UIColor?) -> Self {
        return addAttributes(key: "minimumTrackTintColor", value: value) {
            $0.minimumTrackTintColor = value
        }
    }

    @available(*, deprecated, renamed: "minTrackTint()")
    @discardableResult
    public func minimumTrackTintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "minimumTrackTintColor", value: value) {
            $0.minimumTrackTintColor = value
        }
    }

    /// `maximumTrackTintColor`
    @discardableResult
    public func maxTrackTint(_ value: UIColor?) -> Self {
        return addAttributes(key: "maximumTrackTintColor", value: value) {
            $0.maximumTrackTintColor = value
        }
    }

    @available(*, deprecated, renamed: "maxTrackTint()")
    @discardableResult
    public func maximumTrackTintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "maximumTrackTintColor", value: value) {
            $0.maximumTrackTintColor = value
        }
    }

    /// `thumbTintColor`
    @discardableResult
    public func thumbTint(_ value: UIColor?) -> Self {
        return addAttributes(key: "thumbTintColor", value: value) {
            $0.thumbTintColor = value
        }
    }

    @available(*, deprecated, renamed: "thumbTint()")
    @discardableResult
    public func thumbTintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "thumbTintColor", value: value) {
            $0.thumbTintColor = value
        }
    }

    @discardableResult
    public func thumbImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "thumbImageNormal", value: value) {
            $0.setThumbImage(value, for: .normal)
        }
    }

    @discardableResult
    public func thumbImageHighlighted(_ value: UIImage?) -> Self {
        return addAttributes(key: "thumbImageHighlighted", value: value) {
            $0.setThumbImage(value, for: .highlighted)
        }
    }

    @discardableResult
    public func thumbImageSelected(_ value: UIImage?) -> Self {
        return addAttributes(key: "thumbImageSelected", value: value) {
            $0.setThumbImage(value, for: .selected)
        }
    }

    @discardableResult
    public func thumbImageDisabled(_ value: UIImage?) -> Self {
        return addAttributes(key: "thumbImageDisabled", value: value) {
            $0.setThumbImage(value, for: .disabled)
        }
    }

    /// `minimumTrackImage`
    @discardableResult
    public func minTrackImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "minimumTrackImageNormal", value: value) {
            $0.setMinimumTrackImage(value, for: .normal)
        }
    }

    @available(*, deprecated, renamed: "minTrackImage()")
    @discardableResult
    public func minimumTrackImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "minimumTrackImageNormal", value: value) {
            $0.setMinimumTrackImage(value, for: .normal)
        }
    }

    /// `minimumTrackImageHighlighted`
    @discardableResult
    public func minTrackImageHighlighted(_ value: UIImage?) -> Self {
        return addAttributes(key: "minimumTrackImageHighlighted", value: value) {
            $0.setMinimumTrackImage(value, for: .highlighted)
        }
    }

    @available(*, deprecated, renamed: "minTrackImageHighlighted()")
    @discardableResult
    public func minimumTrackImageHighlighted(_ value: UIImage?) -> Self {
        return addAttributes(key: "minimumTrackImageHighlighted", value: value) {
            $0.setMinimumTrackImage(value, for: .highlighted)
        }
    }

    /// `minimumTrackImageSelected`
    @discardableResult
    public func minTrackImageSelected(_ value: UIImage?) -> Self {
        return addAttributes(key: "minimumTrackImageSelected", value: value) {
            $0.setMinimumTrackImage(value, for: .selected)
        }
    }

    @available(*, deprecated, renamed: "minTrackImageSelected()")
    @discardableResult
    public func minimumTrackImageSelected(_ value: UIImage?) -> Self {
        return addAttributes(key: "minimumTrackImageSelected", value: value) {
            $0.setMinimumTrackImage(value, for: .selected)
        }
    }

    /// `minimumTrackImageDisabled`
    @discardableResult
    public func minTrackImageDisabled(_ value: UIImage?) -> Self {
        return addAttributes(key: "minimumTrackImageDisabled", value: value) {
            $0.setMinimumTrackImage(value, for: .disabled)
        }
    }

    @available(*, deprecated, renamed: "minTrackImageDisabled()")
    @discardableResult
    public func minimumTrackImageDisabled(_ value: UIImage?) -> Self {
        return addAttributes(key: "minimumTrackImageDisabled", value: value) {
            $0.setMinimumTrackImage(value, for: .disabled)
        }
    }

    /// `maximumTrackImage`
    @discardableResult
    public func maxTrackImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "maximumTrackImageNormal", value: value) {
            $0.setMaximumTrackImage(value, for: .normal)
        }
    }

    @available(*, deprecated, renamed: "maxTrackImage()")
    @discardableResult
    public func maximumTrackImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "maximumTrackImageNormal", value: value) {
            $0.setMaximumTrackImage(value, for: .normal)
        }
    }

    /// `maximumTrackImageHighlighted`
    @discardableResult
    public func maxTrackImageHighlighted(_ value: UIImage?) -> Self {
        return addAttributes(key: "maximumTrackImageHighlighted", value: value) {
            $0.setMaximumTrackImage(value, for: .highlighted)
        }
    }

    @available(*, deprecated, renamed: "maxTrackImageHighlighted()")
    @discardableResult
    public func maximumTrackImageHighlighted(_ value: UIImage?) -> Self {
        return addAttributes(key: "maximumTrackImageHighlighted", value: value) {
            $0.setMaximumTrackImage(value, for: .highlighted)
        }
    }

    /// `maximumTrackImageSelected`
    @discardableResult
    public func maxTrackImageSelected(_ value: UIImage?) -> Self {
        return addAttributes(key: "maximumTrackImageSelected", value: value) {
            $0.setMaximumTrackImage(value, for: .selected)
        }
    }

    @available(*, deprecated, renamed: "maxTrackImageSelected()")
    @discardableResult
    public func maximumTrackImageSelected(_ value: UIImage?) -> Self {
        return addAttributes(key: "maximumTrackImageSelected", value: value) {
            $0.setMaximumTrackImage(value, for: .selected)
        }
    }

    /// `maximumTrackImageDisabled`
    @discardableResult
    public func maxTrackImageDisabled(_ value: UIImage?) -> Self {
        return addAttributes(key: "maximumTrackImageDisabled", value: value) {
            $0.setMaximumTrackImage(value, for: .disabled)
        }
    }

    @available(*, deprecated, renamed: "maxTrackImageDisabled()")
    @discardableResult
    public func maximumTrackImageDisabled(_ value: UIImage?) -> Self {
        return addAttributes(key: "maximumTrackImageDisabled", value: value) {
            $0.setMaximumTrackImage(value, for: .disabled)
        }
    }
}
