//
//  UIResponder.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIResponder {
    @discardableResult
    public func userActivity(_ value: NSUserActivity?) -> PandaChain {
        object.userActivity = value
        return self
    }
}
