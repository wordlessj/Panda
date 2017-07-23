//
//  UISwitch.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UISwitch {
    @discardableResult
    public func onTintColor(_ value: UIColor?) -> PandaChain {
        object.onTintColor = value
        return self
    }

    @discardableResult
    public func tintColor(_ value: UIColor?) -> PandaChain {
        object.tintColor = value
        return self
    }

    @discardableResult
    public func thumbTintColor(_ value: UIColor?) -> PandaChain {
        object.thumbTintColor = value
        return self
    }

    @discardableResult
    public func onImage(_ value: UIImage?) -> PandaChain {
        object.onImage = value
        return self
    }

    @discardableResult
    public func offImage(_ value: UIImage?) -> PandaChain {
        object.offImage = value
        return self
    }

    @discardableResult
    public func isOn(_ value: Bool) -> PandaChain {
        object.isOn = value
        return self
    }

    @discardableResult
    public func on(_ on: Bool, animated: Bool) -> PandaChain {
        object.setOn(on, animated: animated)
        return self
    }
}
