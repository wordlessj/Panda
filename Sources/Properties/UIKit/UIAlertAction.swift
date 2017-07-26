//
//  UIAlertAction.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIAlertAction {
    @discardableResult
    public func enabled(_ value: Bool) -> PandaChain {
        object.isEnabled = value
        return self
    }
}
