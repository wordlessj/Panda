//
//  UITableViewExtensions.swift
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

extension PandaChain where Object: UITableView {
    /// Register a class for cell.
    ///
    /// - parameters:
    ///     - cellClass: `UITableViewCell` subclass.
    ///     - id: Reuse identifier. Defaults to `nil`, the name of `cellClass`.
    @discardableResult
    public func register<Cell: UITableViewCell>(_ cellClass: Cell.Type, id: String? = nil) -> PandaChain {
        object.register(cellClass, forCellReuseIdentifier: id ?? NSStringFromClass(cellClass))
        return self
    }

    /// Unregister a class for cell.
    ///
    /// - parameters:
    ///     - cellClass: `UITableViewCell` subclass.
    ///     - id: Reuse identifier. Defaults to `nil`, the name of `cellClass`.
    @discardableResult
    public func unregister<Cell: UITableViewCell>(_ cellClass: Cell.Type, id: String? = nil) -> PandaChain {
        object.register(nil as AnyClass?, forCellReuseIdentifier: id ?? NSStringFromClass(cellClass))
        return self
    }

    /// Register a class for header footer view.
    ///
    /// - parameters:
    ///     - viewClass: `UITableViewHeaderFooterView` subclass.
    ///     - id: Reuse identifier. Defaults to `nil`, the name of `viewClass`.
    @discardableResult
    public func register<View: UITableViewHeaderFooterView>(
        _ viewClass: View.Type,
        id: String? = nil
    ) -> PandaChain {
        object.register(viewClass, forHeaderFooterViewReuseIdentifier: id ?? NSStringFromClass(viewClass))
        return self
    }

    /// Unregister a class for header footer view.
    ///
    /// - parameters:
    ///     - viewClass: `UITableViewHeaderFooterView` subclass.
    ///     - id: Reuse identifier. Defaults to `nil`, the name of `viewClass`.
    @discardableResult
    public func unregister<View: UITableViewHeaderFooterView>(
        _ viewClass: View.Type,
        id: String? = nil
    ) -> PandaChain {
        object.register(nil as AnyClass?,
                        forHeaderFooterViewReuseIdentifier: id ?? NSStringFromClass(viewClass))
        return self
    }

    /// Dequeue a reusable cell.
    ///
    /// - parameters:
    ///     - cellClass: `UITableViewCell` subclass.
    ///     - id: Reuse identifier. Defaults to `nil`, the name of `cellClass`.
    ///     - indexPath: The location of the cell.
    public func dequeue<Cell: UITableViewCell>(
        _ cellClass: Cell.Type,
        id: String? = nil,
        for indexPath: IndexPath
    ) -> Cell {
        return object.dequeueReusableCell(withIdentifier: id ?? NSStringFromClass(cellClass),
                                          for: indexPath) as! Cell
    }

    /// Dequeue a reusable header footer view.
    ///
    /// - parameters:
    ///     - viewClass: `UITableViewHeaderFooterView` subclass.
    ///     - id: Reuse identifier. Defaults to `nil`, the name of `viewClass`.
    public func dequeue<View: UITableViewHeaderFooterView>(
        _ viewClass: View.Type,
        id: String? = nil
    ) -> View? {
        return object.dequeueReusableHeaderFooterView(withIdentifier: id ?? NSStringFromClass(viewClass)) as? View
    }
}
