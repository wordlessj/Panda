//
//  UIDropInteraction.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 11.0, *)
extension PandaChain where Object: UIDropInteraction {
    @discardableResult
    public func allowsSimultaneousDropSessions(_ value: Bool) -> PandaChain {
        object.allowsSimultaneousDropSessions = value
        return self
    }
}
