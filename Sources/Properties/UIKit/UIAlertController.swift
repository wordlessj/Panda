//
//  UIAlertController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIAlertController {
    @available(iOS 9.0, *)
    @discardableResult
    public func preferredAction(_ value: UIAlertAction?) -> PandaChain {
        object.preferredAction = value
        return self
    }

    @discardableResult
    public func title(_ value: String?) -> PandaChain {
        object.title = value
        return self
    }

    @discardableResult
    public func message(_ value: String?) -> PandaChain {
        object.message = value
        return self
    }
}
