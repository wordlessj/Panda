//
//  UIDragInteraction.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 11.0, *)
extension PandaChain where Object: UIDragInteraction {
    @discardableResult
    public func allowsSimultaneousRecognitionDuringLift(_ value: Bool) -> PandaChain {
        object.allowsSimultaneousRecognitionDuringLift = value
        return self
    }

    @discardableResult
    public func enabled(_ value: Bool) -> PandaChain {
        object.isEnabled = value
        return self
    }
}
