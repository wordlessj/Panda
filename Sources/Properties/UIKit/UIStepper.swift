//
//  UIStepper.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIStepper {
    @discardableResult
    public func isContinuous(_ value: Bool) -> PandaChain {
        object.isContinuous = value
        return self
    }

    @discardableResult
    public func autorepeat(_ value: Bool) -> PandaChain {
        object.autorepeat = value
        return self
    }

    @discardableResult
    public func wraps(_ value: Bool) -> PandaChain {
        object.wraps = value
        return self
    }

    @discardableResult
    public func value(_ value: Double) -> PandaChain {
        object.value = value
        return self
    }

    @discardableResult
    public func minimumValue(_ value: Double) -> PandaChain {
        object.minimumValue = value
        return self
    }

    @discardableResult
    public func maximumValue(_ value: Double) -> PandaChain {
        object.maximumValue = value
        return self
    }

    @discardableResult
    public func stepValue(_ value: Double) -> PandaChain {
        object.stepValue = value
        return self
    }

    @discardableResult
    public func tintColor(_ value: UIColor?) -> PandaChain {
        object.tintColor = value
        return self
    }

    @discardableResult
    public func backgroundImage(_ image: UIImage?, for state: UIControlState) -> PandaChain {
        object.setBackgroundImage(image, for: state)
        return self
    }

    @discardableResult
    public func dividerImage(_ image: UIImage?, forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState) -> PandaChain {
        object.setDividerImage(image, forLeftSegmentState: leftState, rightSegmentState: rightState)
        return self
    }

    @discardableResult
    public func incrementImage(_ image: UIImage?, for state: UIControlState) -> PandaChain {
        object.setIncrementImage(image, for: state)
        return self
    }

    @discardableResult
    public func decrementImage(_ image: UIImage?, for state: UIControlState) -> PandaChain {
        object.setDecrementImage(image, for: state)
        return self
    }

    @discardableResult
    public func backgroundImage(
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
            setter: object.setBackgroundImage
        )
    }

    @discardableResult
    public func incrementImage(
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
            setter: object.setIncrementImage
        )
    }

    @discardableResult
    public func decrementImage(
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
            setter: object.setDecrementImage
        )
    }
}
