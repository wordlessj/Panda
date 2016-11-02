//
//  UICollectionViewExtensions.swift
//  Panda
//
//  Created by Javier on 11/2/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import UIKit

extension UICollectionView {
    @discardableResult
    public func registerReusableCell<Cell: UICollectionViewCell>(_ cellClass: Cell.Type) -> Self {
        register(cellClass, forCellWithReuseIdentifier: NSStringFromClass(cellClass))
        return self
    }

    @discardableResult
    public func unregisterReusableCell<Cell: UICollectionViewCell>(_ cellClass: Cell.Type) -> Self {
        register(nil as AnyClass?, forCellWithReuseIdentifier: NSStringFromClass(cellClass))
        return self
    }

    @discardableResult
    public func registerReusableSupplementaryView<ReusableView: UICollectionReusableView>
        (_ viewClass: ReusableView.Type, ofKind elementKind: String) -> Self {
        register(viewClass, forSupplementaryViewOfKind: elementKind, withReuseIdentifier: NSStringFromClass(viewClass))
        return self
    }

    @discardableResult
    public func unregisterReusableSupplementaryView<ReusableView: UICollectionReusableView>
        (_ viewClass: ReusableView.Type, ofKind elementKind: String) -> Self {
        register(nil as AnyClass?,
                 forSupplementaryViewOfKind: elementKind,
                 withReuseIdentifier: NSStringFromClass(viewClass))
        return self
    }

    public func dequeueReusableCell<Cell: UICollectionViewCell>(_ cellClass: Cell.Type, for indexPath: IndexPath) -> Cell {
        return dequeueReusableCell(withReuseIdentifier: NSStringFromClass(cellClass), for: indexPath) as! Cell
    }

    public func dequeueReusableSupplementaryView<ReusableView: UICollectionReusableView>
        (_ viewClass: ReusableView.Type, ofKind elementKind: String, for indexPath: IndexPath) -> ReusableView {
        return dequeueReusableSupplementaryView(ofKind: elementKind,
                                                withReuseIdentifier: NSStringFromClass(viewClass),
                                                for: indexPath) as! ReusableView
    }
}
