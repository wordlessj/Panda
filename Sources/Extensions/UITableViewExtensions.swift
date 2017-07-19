//
//  UITableViewExtensions.swift
//  Panda
//
//  Created by Javier on 11/2/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import UIKit

extension UITableView {
    @discardableResult
    public func registerReusableCell<Cell: UITableViewCell>(_ cellClass: Cell.Type) -> Self {
        register(cellClass, forCellReuseIdentifier: NSStringFromClass(cellClass))
        return self
    }

    @discardableResult
    public func unregisterReusableCell<Cell: UITableViewCell>(_ cellClass: Cell.Type) -> Self {
        register(nil as AnyClass?, forCellReuseIdentifier: NSStringFromClass(cellClass))
        return self
    }

    public func dequeueReusableCell<Cell: UITableViewCell>(_ cellClass: Cell.Type, for indexPath: IndexPath) -> Cell {
        return dequeueReusableCell(withIdentifier: NSStringFromClass(cellClass), for: indexPath) as! Cell
    }

    @discardableResult
    public func registerReusableHeaderFooterView<HeaderFooterView: UITableViewHeaderFooterView>
        (_ aClass: HeaderFooterView.Type) -> Self {
        register(aClass, forHeaderFooterViewReuseIdentifier: NSStringFromClass(aClass))
        return self
    }

    @discardableResult
    public func unregisterReusableHeaderFooterView<HeaderFooterView: UITableViewHeaderFooterView>
        (_ aClass: HeaderFooterView.Type) -> Self {
        register(nil as AnyClass?, forHeaderFooterViewReuseIdentifier: NSStringFromClass(aClass))
        return self
    }

    public func dequeueReusableHeaderFooterView<HeaderFooterView: UITableViewHeaderFooterView>
        (_ aClass: HeaderFooterView.Type) -> HeaderFooterView? {
        return dequeueReusableHeaderFooterView(withIdentifier: NSStringFromClass(aClass)) as? HeaderFooterView
    }

    @discardableResult
    public func performBatchUpdates(_ updates: (() -> ())? = nil) -> Self {
        beginUpdates()
        updates?()
        endUpdates()
        return self
    }
}
