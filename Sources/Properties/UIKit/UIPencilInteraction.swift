//
//  UIPencilInteraction.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 12.1, *)
extension PandaChain where Object: UIPencilInteraction {
    @discardableResult
    public func delegate(_ value: UIPencilInteractionDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func isEnabled(_ value: Bool) -> PandaChain {
        object.isEnabled = value
        return self
    }
}
