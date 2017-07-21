//
//  UIPreviewInteraction.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 10.0, *)
extension PandaChain where Object: UIPreviewInteraction {
    @discardableResult
    public func delegate(_ value: UIPreviewInteractionDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }
}
