//
//  UICollectionViewLayoutInvalidationContext.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UICollectionViewLayoutInvalidationContext {
    /// `contentOffsetAdjustment`
    @discardableResult
    public func contentOffsetAdjust(_ value: CGPoint) -> PandaChain {
        object.contentOffsetAdjustment = value
        return self
    }

    @available(*, deprecated, renamed: "contentOffsetAdjust()")
    @discardableResult
    public func contentOffsetAdjustment(_ value: CGPoint) -> PandaChain {
        object.contentOffsetAdjustment = value
        return self
    }

    /// `contentSizeAdjustment`
    @discardableResult
    public func contentSizeAdjust(_ value: CGSize) -> PandaChain {
        object.contentSizeAdjustment = value
        return self
    }

    @available(*, deprecated, renamed: "contentSizeAdjust()")
    @discardableResult
    public func contentSizeAdjustment(_ value: CGSize) -> PandaChain {
        object.contentSizeAdjustment = value
        return self
    }
}
