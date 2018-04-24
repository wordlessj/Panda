//
//  UITableView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UITableView {
    @discardableResult
    public func dataSource(_ value: UITableViewDataSource?) -> Self {
        return addAttributes(key: "dataSource", value: value) {
            $0.dataSource = value
        }
    }

    @discardableResult
    public func delegate(_ value: UITableViewDelegate?) -> Self {
        return addAttributes(key: "delegate", value: value) {
            $0.delegate = value
        }
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func prefetchDataSource(_ value: UITableViewDataSourcePrefetching?) -> Self {
        return addAttributes(key: "prefetchDataSource", value: value) {
            $0.prefetchDataSource = value
        }
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func dragDelegate(_ value: UITableViewDragDelegate?) -> Self {
        return addAttributes(key: "dragDelegate", value: value) {
            $0.dragDelegate = value
        }
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func dropDelegate(_ value: UITableViewDropDelegate?) -> Self {
        return addAttributes(key: "dropDelegate", value: value) {
            $0.dropDelegate = value
        }
    }

    @discardableResult
    public func rowHeight(_ value: CGFloat) -> Self {
        return addAttributes(key: "rowHeight", value: value) {
            $0.rowHeight = value
        }
    }

    @discardableResult
    public func sectionHeaderHeight(_ value: CGFloat) -> Self {
        return addAttributes(key: "sectionHeaderHeight", value: value) {
            $0.sectionHeaderHeight = value
        }
    }

    @discardableResult
    public func sectionFooterHeight(_ value: CGFloat) -> Self {
        return addAttributes(key: "sectionFooterHeight", value: value) {
            $0.sectionFooterHeight = value
        }
    }

    @discardableResult
    public func estimatedRowHeight(_ value: CGFloat) -> Self {
        return addAttributes(key: "estimatedRowHeight", value: value) {
            $0.estimatedRowHeight = value
        }
    }

    @discardableResult
    public func estimatedSectionHeaderHeight(_ value: CGFloat) -> Self {
        return addAttributes(key: "estimatedSectionHeaderHeight", value: value) {
            $0.estimatedSectionHeaderHeight = value
        }
    }

    @discardableResult
    public func estimatedSectionFooterHeight(_ value: CGFloat) -> Self {
        return addAttributes(key: "estimatedSectionFooterHeight", value: value) {
            $0.estimatedSectionFooterHeight = value
        }
    }

    @discardableResult
    public func separatorInset(_ value: UIEdgeInsets) -> Self {
        return addAttributes(key: "separatorInset", value: value) {
            $0.separatorInset = value
        }
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func separatorInsetReference(_ value: UITableViewSeparatorInsetReference) -> Self {
        return addAttributes(key: "separatorInsetReference", value: value) {
            $0.separatorInsetReference = value
        }
    }

    @discardableResult
    public func backgroundView(_ value: UIView?) -> Self {
        return addAttributes(key: "backgroundView", value: value) {
            $0.backgroundView = value
        }
    }

    @discardableResult
    public func editing(_ value: Bool) -> Self {
        return addAttributes(key: "isEditing", value: value) {
            $0.isEditing = value
        }
    }

    @discardableResult
    public func allowsSelection(_ value: Bool) -> Self {
        return addAttributes(key: "allowsSelection", value: value) {
            $0.allowsSelection = value
        }
    }

    @discardableResult
    public func allowsSelectionDuringEditing(_ value: Bool) -> Self {
        return addAttributes(key: "allowsSelectionDuringEditing", value: value) {
            $0.allowsSelectionDuringEditing = value
        }
    }

    @discardableResult
    public func allowsMultipleSelection(_ value: Bool) -> Self {
        return addAttributes(key: "allowsMultipleSelection", value: value) {
            $0.allowsMultipleSelection = value
        }
    }

    @discardableResult
    public func allowsMultipleSelectionDuringEditing(_ value: Bool) -> Self {
        return addAttributes(key: "allowsMultipleSelectionDuringEditing", value: value) {
            $0.allowsMultipleSelectionDuringEditing = value
        }
    }

    @discardableResult
    public func sectionIndexMinimumDisplayRowCount(_ value: Int) -> Self {
        return addAttributes(key: "sectionIndexMinimumDisplayRowCount", value: value) {
            $0.sectionIndexMinimumDisplayRowCount = value
        }
    }

    @discardableResult
    public func sectionIndexColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "sectionIndexColor", value: value) {
            $0.sectionIndexColor = value
        }
    }

    @discardableResult
    public func sectionIndexBackgroundColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "sectionIndexBackgroundColor", value: value) {
            $0.sectionIndexBackgroundColor = value
        }
    }

    @discardableResult
    public func sectionIndexTrackingBackgroundColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "sectionIndexTrackingBackgroundColor", value: value) {
            $0.sectionIndexTrackingBackgroundColor = value
        }
    }

    @discardableResult
    public func separatorStyle(_ value: UITableViewCellSeparatorStyle) -> Self {
        return addAttributes(key: "separatorStyle", value: value) {
            $0.separatorStyle = value
        }
    }

    @discardableResult
    public func separatorColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "separatorColor", value: value) {
            $0.separatorColor = value
        }
    }

    @discardableResult
    public func separatorEffect(_ value: UIVisualEffect?) -> Self {
        return addAttributes(key: "separatorEffect", value: value) {
            $0.separatorEffect = value
        }
    }

    @discardableResult
    public func cellLayoutMarginsFollowReadableWidth(_ value: Bool) -> Self {
        return addAttributes(key: "cellLayoutMarginsFollowReadableWidth", value: value) {
            $0.cellLayoutMarginsFollowReadableWidth = value
        }
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func insetsContentViewsToSafeArea(_ value: Bool) -> Self {
        return addAttributes(key: "insetsContentViewsToSafeArea", value: value) {
            $0.insetsContentViewsToSafeArea = value
        }
    }

    @discardableResult
    public func tableHeaderView(_ value: UIView?) -> Self {
        return addAttributes(key: "tableHeaderView", value: value) {
            $0.tableHeaderView = value
        }
    }

    @discardableResult
    public func tableFooterView(_ value: UIView?) -> Self {
        return addAttributes(key: "tableFooterView", value: value) {
            $0.tableFooterView = value
        }
    }

    @discardableResult
    public func remembersLastFocusedIndexPath(_ value: Bool) -> Self {
        return addAttributes(key: "remembersLastFocusedIndexPath", value: value) {
            $0.remembersLastFocusedIndexPath = value
        }
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func dragInteractionEnabled(_ value: Bool) -> Self {
        return addAttributes(key: "dragInteractionEnabled", value: value) {
            $0.dragInteractionEnabled = value
        }
    }
}
