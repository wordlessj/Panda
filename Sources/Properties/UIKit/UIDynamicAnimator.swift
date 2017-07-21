//
//  UIDynamicAnimator.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIDynamicAnimator {
    @discardableResult
    public func delegate(_ value: UIDynamicAnimatorDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }
}
