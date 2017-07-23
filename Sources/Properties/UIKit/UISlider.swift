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

    @discardableResult
    public func minimumValue(_ value: Float) -> PandaChain {
        object.minimumValue = value
        return self
    }

    @discardableResult
    public func maximumValue(_ value: Float) -> PandaChain {
        object.maximumValue = value
        return self
    }

    @discardableResult
    public func minimumValueImage(_ value: UIImage?) -> PandaChain {
        object.minimumValueImage = value
        return self
    }

    @discardableResult
    public func maximumValueImage(_ value: UIImage?) -> PandaChain {
        object.maximumValueImage = value
        return self
    }

    @discardableResult
    public func isContinuous(_ value: Bool) -> PandaChain {
        object.isContinuous = value
        return self
    }

    @discardableResult
    public func minimumTrackTintColor(_ value: UIColor?) -> PandaChain {
        object.minimumTrackTintColor = value
        return self
    }

    @discardableResult
    public func maximumTrackTintColor(_ value: UIColor?) -> PandaChain {
        object.maximumTrackTintColor = value
        return self
    }

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

    @discardableResult
    public func minimumTrackImage(_ image: UIImage?, for state: UIControlState) -> PandaChain {
        object.setMinimumTrackImage(image, for: state)
        return self
    }

    @discardableResult
    public func maximumTrackImage(_ image: UIImage?, for state: UIControlState) -> PandaChain {
        object.setMaximumTrackImage(image, for: state)
        return self
    }

    @discardableResult
    public func thumbImage(
        normal: UIImage,
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

    @discardableResult
    public func minimumTrackImage(
        normal: UIImage,
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

    @discardableResult
    public func maximumTrackImage(
        normal: UIImage,
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
