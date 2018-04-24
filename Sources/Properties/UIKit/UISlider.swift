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

    @discardableResult
    public func minimumValue(_ value: Float) -> Self {
        return addAttributes(key: "minimumValue", value: value) {
            $0.minimumValue = value
        }
    }

    @discardableResult
    public func maximumValue(_ value: Float) -> Self {
        return addAttributes(key: "maximumValue", value: value) {
            $0.maximumValue = value
        }
    }

    @discardableResult
    public func minimumValueImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "minimumValueImage", value: value) {
            $0.minimumValueImage = value
        }
    }

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

    @discardableResult
    public func minimumTrackTintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "minimumTrackTintColor", value: value) {
            $0.minimumTrackTintColor = value
        }
    }

    @discardableResult
    public func maximumTrackTintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "maximumTrackTintColor", value: value) {
            $0.maximumTrackTintColor = value
        }
    }

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

    @discardableResult
    public func minimumTrackImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "minimumTrackImageNormal", value: value) {
            $0.setMinimumTrackImage(value, for: .normal)
        }
    }

    @discardableResult
    public func minimumTrackImageHighlighted(_ value: UIImage?) -> Self {
        return addAttributes(key: "minimumTrackImageHighlighted", value: value) {
            $0.setMinimumTrackImage(value, for: .highlighted)
        }
    }

    @discardableResult
    public func minimumTrackImageSelected(_ value: UIImage?) -> Self {
        return addAttributes(key: "minimumTrackImageSelected", value: value) {
            $0.setMinimumTrackImage(value, for: .selected)
        }
    }

    @discardableResult
    public func minimumTrackImageDisabled(_ value: UIImage?) -> Self {
        return addAttributes(key: "minimumTrackImageDisabled", value: value) {
            $0.setMinimumTrackImage(value, for: .disabled)
        }
    }

    @discardableResult
    public func maximumTrackImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "maximumTrackImageNormal", value: value) {
            $0.setMaximumTrackImage(value, for: .normal)
        }
    }

    @discardableResult
    public func maximumTrackImageHighlighted(_ value: UIImage?) -> Self {
        return addAttributes(key: "maximumTrackImageHighlighted", value: value) {
            $0.setMaximumTrackImage(value, for: .highlighted)
        }
    }

    @discardableResult
    public func maximumTrackImageSelected(_ value: UIImage?) -> Self {
        return addAttributes(key: "maximumTrackImageSelected", value: value) {
            $0.setMaximumTrackImage(value, for: .selected)
        }
    }

    @discardableResult
    public func maximumTrackImageDisabled(_ value: UIImage?) -> Self {
        return addAttributes(key: "maximumTrackImageDisabled", value: value) {
            $0.setMaximumTrackImage(value, for: .disabled)
        }
    }
}
