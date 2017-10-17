//
//  UICollectionViewController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UICollectionViewController {
    @discardableResult
    public func collectionView(_ value: UICollectionViewConvertible?) -> PandaChain {
        object.collectionView = unbox(value)
        return self
    }

    @discardableResult
    public func clearsSelectionOnViewWillAppear(_ value: Bool) -> PandaChain {
        object.clearsSelectionOnViewWillAppear = value
        return self
    }

    @discardableResult
    public func useLayoutToLayoutNavigationTransitions(_ value: Bool) -> PandaChain {
        object.useLayoutToLayoutNavigationTransitions = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func installsStandardGestureForInteractiveMovement(_ value: Bool) -> PandaChain {
        object.installsStandardGestureForInteractiveMovement = value
        return self
    }
}
