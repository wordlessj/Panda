//
//  UICollectionViewFlowLayoutInvalidationContext.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UICollectionViewFlowLayoutInvalidationContext {
    @discardableResult
    public func invalidateFlowLayoutDelegateMetrics(_ value: Bool) -> PandaChain {
        object.invalidateFlowLayoutDelegateMetrics = value
        return self
    }

    @discardableResult
    public func invalidateFlowLayoutAttributes(_ value: Bool) -> PandaChain {
        object.invalidateFlowLayoutAttributes = value
        return self
    }
}
