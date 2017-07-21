//
//  UIDynamicBehavior.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIDynamicBehavior {
    @discardableResult
    public func action(_ value: (() -> Void)?) -> PandaChain {
        object.action = value
        return self
    }
}
