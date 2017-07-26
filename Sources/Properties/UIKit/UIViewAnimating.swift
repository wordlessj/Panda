//
//  UIViewAnimating.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIViewAnimating {
    @discardableResult
    public func reversed(_ value: Bool) -> PandaChain {
        object.isReversed = value
        return self
    }

    @discardableResult
    public func fractionComplete(_ value: CGFloat) -> PandaChain {
        object.fractionComplete = value
        return self
    }
}
