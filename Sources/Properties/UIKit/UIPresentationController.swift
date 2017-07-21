//
//  UIPresentationController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIPresentationController {
    @discardableResult
    public func delegate(_ value: UIAdaptivePresentationControllerDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func overrideTraitCollection(_ value: UITraitCollection?) -> PandaChain {
        object.overrideTraitCollection = value
        return self
    }
}
