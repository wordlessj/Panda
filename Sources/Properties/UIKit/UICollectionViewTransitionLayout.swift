//
//  UICollectionViewTransitionLayout.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UICollectionViewTransitionLayout {
    @discardableResult
    public func transitionProgress(_ value: CGFloat) -> PandaChain {
        object.transitionProgress = value
        return self
    }
}
