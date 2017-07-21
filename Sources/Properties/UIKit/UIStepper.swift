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
}
