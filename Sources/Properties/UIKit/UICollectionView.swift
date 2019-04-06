//
//  UICollectionView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

public protocol UICollectionViewConvertible {}

extension UICollectionView: UICollectionViewConvertible {}
extension PandaChain: UICollectionViewConvertible {}

extension PandaChain where Object: UICollectionView {
    @discardableResult
    public func collectionViewLayout(_ value: UICollectionViewLayout) -> PandaChain {
        object.collectionViewLayout = value
        return self
    }

    @discardableResult
    public func delegate(_ value: UICollectionViewDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func dataSource(_ value: UICollectionViewDataSource?) -> PandaChain {
        object.dataSource = value
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func prefetchDataSource(_ value: UICollectionViewDataSourcePrefetching?) -> PandaChain {
        object.prefetchDataSource = value
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func isPrefetchingEnabled(_ value: Bool) -> PandaChain {
        object.isPrefetchingEnabled = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func dragDelegate(_ value: UICollectionViewDragDelegate?) -> PandaChain {
        object.dragDelegate = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func dropDelegate(_ value: UICollectionViewDropDelegate?) -> PandaChain {
        object.dropDelegate = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func dragInteractionEnabled(_ value: Bool) -> PandaChain {
        object.dragInteractionEnabled = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func reorderingCadence(_ value: UICollectionView.ReorderingCadence) -> PandaChain {
        object.reorderingCadence = value
        return self
    }

    @discardableResult
    public func backgroundView(_ value: UIViewConvertible?) -> PandaChain {
        object.backgroundView = unbox(value)
        return self
    }

    @discardableResult
    public func allowsSelection(_ value: Bool) -> PandaChain {
        object.allowsSelection = value
        return self
    }

    @discardableResult
    public func allowsMultipleSelection(_ value: Bool) -> PandaChain {
        object.allowsMultipleSelection = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func remembersLastFocusedIndexPath(_ value: Bool) -> PandaChain {
        object.remembersLastFocusedIndexPath = value
        return self
    }

    @discardableResult
    public func collectionViewLayout(_ layout: UICollectionViewLayout, animated: Bool) -> PandaChain {
        object.setCollectionViewLayout(layout, animated: animated)
        return self
    }
}
