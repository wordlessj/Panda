//
//  UICollectionViewExtensions.swift
//  Panda
//
//  Copyright (c) 2017 Javier Zhang (https://wordlessj.github.io/)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import UIKit

extension PandaChain where Object: UICollectionView {
    /// Register a class for cell.
    ///
    /// - parameters:
    ///     - cellClass: `UICollectionViewCell` subclass.
    ///     - id: Reuse identifier. Defaults to `nil`, the name of `cellClass`.
    @discardableResult
    public func register<Cell: UICollectionViewCell>(
        _ cellClass: Cell.Type,
        id: String? = nil
    ) -> PandaChain {
        object.register(cellClass, forCellWithReuseIdentifier: id ?? NSStringFromClass(cellClass))
        return self
    }

    /// Unregister a class for cell.
    ///
    /// - parameters:
    ///     - cellClass: `UICollectionViewCell` subclass.
    ///     - id: Reuse identifier. Defaults to `nil`, the name of `cellClass`.
    @discardableResult
    public func unregister<Cell: UICollectionViewCell>(
        _ cellClass: Cell.Type,
        id: String? = nil
    ) -> PandaChain {
        object.register(nil as AnyClass?, forCellWithReuseIdentifier: id ?? NSStringFromClass(cellClass))
        return self
    }

    /// Register a class for supplementary view.
    ///
    /// - parameters:
    ///     - viewClass: `UICollectionReusableView` subclass.
    ///     - elementKind: The kind of supplementary view.
    ///     - id: Reuse identifier. Defaults to `nil`, the name of `viewClass`.
    @discardableResult
    public func register<View: UICollectionReusableView>(
        _ viewClass: View.Type,
        ofKind elementKind: String,
        id: String? = nil
    ) -> PandaChain {
        object.register(viewClass,
                        forSupplementaryViewOfKind: elementKind,
                        withReuseIdentifier: id ?? NSStringFromClass(viewClass))
        return self
    }

    /// Unregister a class for supplementary view.
    ///
    /// - parameters:
    ///     - viewClass: `UICollectionReusableView` subclass.
    ///     - elementKind: The kind of supplementary view.
    ///     - id: Reuse identifier. Defaults to `nil`, the name of `viewClass`.
    @discardableResult
    public func unregister<View: UICollectionReusableView>(
        _ viewClass: View.Type,
        ofKind elementKind: String,
        id: String? = nil
    ) -> PandaChain {
        object.register(nil as AnyClass?,
                        forSupplementaryViewOfKind: elementKind,
                        withReuseIdentifier: id ?? NSStringFromClass(viewClass))
        return self
    }

    /// Dequeue a reusable cell.
    ///
    /// - parameters:
    ///     - cellClass: `UICollectionViewCell` subclass.
    ///     - id: Reuse identifier. Defaults to `nil`, the name of `cellClass`.
    ///     - indexPath: The location of the cell.
    public func dequeue<Cell: UICollectionViewCell>(
        _ cellClass: Cell.Type,
        id: String? = nil,
        for indexPath: IndexPath
    ) -> Cell {
        return object.dequeueReusableCell(withReuseIdentifier: id ?? NSStringFromClass(cellClass),
                                          for: indexPath) as! Cell
    }

    /// Dequeue a reusable supplementary view.
    ///
    /// - parameters:
    ///     - viewClass: `UICollectionReusableView` subclass.
    ///     - elementKind: The kind of supplementary view.
    ///     - id: Reuse identifier. Defaults to `nil`, the name of `viewClass`.
    ///     - indexPath: The location of the cell.
    public func dequeue<View: UICollectionReusableView>(
        _ viewClass: View.Type,
        ofKind elementKind: String,
        id: String? = nil,
        for indexPath: IndexPath
    ) -> View {
        return object.dequeueReusableSupplementaryView(ofKind: elementKind,
                                                       withReuseIdentifier: id ?? NSStringFromClass(viewClass),
                                                       for: indexPath) as! View
    }
}
