//
//  UIAlertView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS, introduced: 2.0, deprecated: 9.0)
extension PandaChain where Object: UIAlertView {
    @discardableResult
    public func delegate(_ value: AnyObject?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func title(_ value: String) -> PandaChain {
        object.title = value
        return self
    }

    @discardableResult
    public func message(_ value: String?) -> PandaChain {
        object.message = value
        return self
    }

    @discardableResult
    public func cancelButtonIndex(_ value: Int) -> PandaChain {
        object.cancelButtonIndex = value
        return self
    }

    @discardableResult
    public func alertViewStyle(_ value: UIAlertViewStyle) -> PandaChain {
        object.alertViewStyle = value
        return self
    }
}
