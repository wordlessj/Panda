//
//  UIAlertAction.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

public protocol UIAlertActionConvertible {}

extension UIAlertAction: UIAlertActionConvertible {}
extension PandaChain: UIAlertActionConvertible {}

extension PandaChain where Object: UIAlertAction {
    @discardableResult
    public func isEnabled(_ value: Bool) -> PandaChain {
        object.isEnabled = value
        return self
    }
}
