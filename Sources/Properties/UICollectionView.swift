//
//  UICollectionView.swift
//  Panda
//
//  Created by Javier on 11/2/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import UIKit

extension UICollectionView {
    @discardableResult
    public func dataSource(_ value: UICollectionViewDataSource?) -> Self {
        dataSource = value
        return self
    }

    @discardableResult
    public func backgroundView(_ value: UIView?) -> Self {
        backgroundView = value
        return self
    }

    @discardableResult
    public func collectionViewLayout(_ value: UICollectionViewLayout) -> Self {
        collectionViewLayout = value
        return self
    }

    @discardableResult
    public func allowsSelection(_ value: Bool) -> Self {
        allowsSelection = value
        return self
    }

    @discardableResult
    public func allowsMultipleSelection(_ value: Bool) -> Self {
        allowsMultipleSelection = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func remembersLastFocusedIndexPath(_ value: Bool) -> Self {
        remembersLastFocusedIndexPath = value
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func prefetchDataSource(_ value: UICollectionViewDataSourcePrefetching?) -> Self {
        prefetchDataSource = value
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func isPrefetchingEnabled(_ value: Bool) -> Self {
        isPrefetchingEnabled = value
        return self
    }
}
