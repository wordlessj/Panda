//
//  UIDynamicItem.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIDynamicItem {
    @discardableResult
    public func center(_ value: CGPoint) -> PandaChain {
        object.center = value
        return self
    }

    @discardableResult
    public func transform(_ value: CGAffineTransform) -> PandaChain {
        object.transform = value
        return self
    }
}
