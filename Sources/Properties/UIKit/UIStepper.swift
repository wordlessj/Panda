//
//  UIStepper.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UIStepper {
    @discardableResult
    public func continuous(_ value: Bool) -> Self {
        return addAttributes(key: "isContinuous", value: value) {
            $0.isContinuous = value
        }
    }

    @discardableResult
    public func autorepeat(_ value: Bool) -> Self {
        return addAttributes(key: "autorepeat", value: value) {
            $0.autorepeat = value
        }
    }

    @discardableResult
    public func wraps(_ value: Bool) -> Self {
        return addAttributes(key: "wraps", value: value) {
            $0.wraps = value
        }
    }

    @discardableResult
    public func value(_ value: Double) -> Self {
        return addAttributes(key: "value", value: value) {
            $0.value = value
        }
    }

    @discardableResult
    public func minimumValue(_ value: Double) -> Self {
        return addAttributes(key: "minimumValue", value: value) {
            $0.minimumValue = value
        }
    }

    @discardableResult
    public func maximumValue(_ value: Double) -> Self {
        return addAttributes(key: "maximumValue", value: value) {
            $0.maximumValue = value
        }
    }

    @discardableResult
    public func stepValue(_ value: Double) -> Self {
        return addAttributes(key: "stepValue", value: value) {
            $0.stepValue = value
        }
    }

    @discardableResult
    public func tintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "tintColor", value: value) {
            $0.tintColor = value
        }
    }

    @discardableResult
    public func backgroundImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImageNormal", value: value) {
            $0.setBackgroundImage(value, for: .normal)
        }
    }

    @discardableResult
    public func backgroundImageHighlighted(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImageHighlighted", value: value) {
            $0.setBackgroundImage(value, for: .highlighted)
        }
    }

    @discardableResult
    public func backgroundImageSelected(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImageSelected", value: value) {
            $0.setBackgroundImage(value, for: .selected)
        }
    }

    @discardableResult
    public func backgroundImageDisabled(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImageDisabled", value: value) {
            $0.setBackgroundImage(value, for: .disabled)
        }
    }

    @discardableResult
    public func incrementImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "incrementImageNormal", value: value) {
            $0.setIncrementImage(value, for: .normal)
        }
    }

    @discardableResult
    public func incrementImageHighlighted(_ value: UIImage?) -> Self {
        return addAttributes(key: "incrementImageHighlighted", value: value) {
            $0.setIncrementImage(value, for: .highlighted)
        }
    }

    @discardableResult
    public func incrementImageSelected(_ value: UIImage?) -> Self {
        return addAttributes(key: "incrementImageSelected", value: value) {
            $0.setIncrementImage(value, for: .selected)
        }
    }

    @discardableResult
    public func incrementImageDisabled(_ value: UIImage?) -> Self {
        return addAttributes(key: "incrementImageDisabled", value: value) {
            $0.setIncrementImage(value, for: .disabled)
        }
    }

    @discardableResult
    public func decrementImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "decrementImageNormal", value: value) {
            $0.setDecrementImage(value, for: .normal)
        }
    }

    @discardableResult
    public func decrementImageHighlighted(_ value: UIImage?) -> Self {
        return addAttributes(key: "decrementImageHighlighted", value: value) {
            $0.setDecrementImage(value, for: .highlighted)
        }
    }

    @discardableResult
    public func decrementImageSelected(_ value: UIImage?) -> Self {
        return addAttributes(key: "decrementImageSelected", value: value) {
            $0.setDecrementImage(value, for: .selected)
        }
    }

    @discardableResult
    public func decrementImageDisabled(_ value: UIImage?) -> Self {
        return addAttributes(key: "decrementImageDisabled", value: value) {
            $0.setDecrementImage(value, for: .disabled)
        }
    }
}
