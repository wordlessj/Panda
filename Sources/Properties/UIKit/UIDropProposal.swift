//
//  UIDropProposal.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 11.0, *)
extension PandaChain where Object: UIDropProposal {
    @discardableResult
    public func precise(_ value: Bool) -> PandaChain {
        object.isPrecise = value
        return self
    }

    @discardableResult
    public func prefersFullSizePreview(_ value: Bool) -> PandaChain {
        object.prefersFullSizePreview = value
        return self
    }
}
