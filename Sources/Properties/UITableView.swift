//
//  UITableView.swift
//  Panda
//
//  Created by Javier on 11/2/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import UIKit

extension UITableView {
    @discardableResult
    public func rowHeight(_ value: CGFloat) -> Self {
        rowHeight = value
        return self
    }

    @discardableResult
    public func separatorStyle(_ value: UITableViewCellSeparatorStyle) -> Self {
        separatorStyle = value
        return self
    }

    @discardableResult
    public func separatorColor(_ value: UIColor?) -> Self {
        separatorColor = value
        return self
    }

    @discardableResult
    public func separatorEffect(_ value: UIVisualEffect?) -> Self {
        separatorEffect = value
        return self
    }

    @discardableResult
    public func backgroundView(_ value: UIView?) -> Self {
        backgroundView = value
        return self
    }

    @discardableResult
    public func separatorInset(_ value: UIEdgeInsets) -> Self {
        separatorInset = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func cellLayoutMarginsFollowReadableWidth(_ value: Bool) -> Self {
        cellLayoutMarginsFollowReadableWidth = value
        return self
    }

    @discardableResult
    public func tableHeaderView(_ value: UIView?) -> Self {
        tableHeaderView = value
        return self
    }

    @discardableResult
    public func tableFooterView(_ value: UIView?) -> Self {
        tableFooterView = value
        return self
    }

    @discardableResult
    public func sectionHeaderHeight(_ value: CGFloat) -> Self {
        sectionHeaderHeight = value
        return self
    }

    @discardableResult
    public func sectionFooterHeight(_ value: CGFloat) -> Self {
        sectionFooterHeight = value
        return self
    }

    @discardableResult
    public func estimatedRowHeight(_ value: CGFloat) -> Self {
        estimatedRowHeight = value
        return self
    }

    @discardableResult
    public func estimatedSectionHeaderHeight(_ value: CGFloat) -> Self {
        estimatedSectionHeaderHeight = value
        return self
    }

    @discardableResult
    public func estimatedSectionFooterHeight(_ value: CGFloat) -> Self {
        estimatedSectionFooterHeight = value
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

    @discardableResult
    public func allowsSelectionDuringEditing(_ value: Bool) -> Self {
        allowsSelectionDuringEditing = value
        return self
    }

    @discardableResult
    public func allowsMultipleSelectionDuringEditing(_ value: Bool) -> Self {
        allowsMultipleSelectionDuringEditing = value
        return self
    }

    @discardableResult
    public func isEditing(_ value: Bool) -> Self {
        isEditing = value
        return self
    }

    @discardableResult
    public func dataSource(_ value: UITableViewDataSource?) -> Self {
        dataSource = value
        return self
    }

    @discardableResult
    public func sectionIndexMinimumDisplayRowCount(_ value: Int) -> Self {
        sectionIndexMinimumDisplayRowCount = value
        return self
    }

    @discardableResult
    public func sectionIndexColor(_ value: UIColor?) -> Self {
        sectionIndexColor = value
        return self
    }

    @discardableResult
    public func sectionIndexBackgroundColor(_ value: UIColor?) -> Self {
        sectionIndexBackgroundColor = value
        return self
    }

    @discardableResult
    public func sectionIndexTrackingBackgroundColor(_ value: UIColor?) -> Self {
        sectionIndexTrackingBackgroundColor = value
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
    public func prefetchDataSource(_ value: UITableViewDataSourcePrefetching?) -> Self {
        prefetchDataSource = value
        return self
    }
}
