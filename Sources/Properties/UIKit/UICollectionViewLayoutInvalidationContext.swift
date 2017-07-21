//
//  UICollectionViewLayoutInvalidationContext.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UICollectionViewLayoutInvalidationContext {
    @discardableResult
    public func contentOffsetAdjustment(_ value: CGPoint) -> PandaChain {
        object.contentOffsetAdjustment = value
        return self
    }

    @discardableResult
    public func contentSizeAdjustment(_ value: CGSize) -> PandaChain {
        object.contentSizeAdjustment = value
        return self
    }
}
