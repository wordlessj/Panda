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
}
