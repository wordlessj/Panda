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

    /// `prefetchDataSource`
    @available(iOS 10.0, *)
    @discardableResult
    public func prefetchSource(_ value: UITableViewDataSourcePrefetching?) -> Self {
        return addAttributes(key: "prefetchDataSource", value: value) {
            $0.prefetchDataSource = value
        }
    }

    @available(*, deprecated, renamed: "prefetchSource()")
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

    /// `sectionHeaderHeight`
    @discardableResult
    public func headerHeight(_ value: CGFloat) -> Self {
        return addAttributes(key: "sectionHeaderHeight", value: value) {
            $0.sectionHeaderHeight = value
        }
    }

    @available(*, deprecated, renamed: "headerHeight()")
    @discardableResult
    public func sectionHeaderHeight(_ value: CGFloat) -> Self {
        return addAttributes(key: "sectionHeaderHeight", value: value) {
            $0.sectionHeaderHeight = value
        }
    }

    /// `sectionFooterHeight`
    @discardableResult
    public func footerHeight(_ value: CGFloat) -> Self {
        return addAttributes(key: "sectionFooterHeight", value: value) {
            $0.sectionFooterHeight = value
        }
    }

    @available(*, deprecated, renamed: "footerHeight()")
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

    /// `estimatedSectionHeaderHeight`
    @discardableResult
    public func estimatedHeaderHeight(_ value: CGFloat) -> Self {
        return addAttributes(key: "estimatedSectionHeaderHeight", value: value) {
            $0.estimatedSectionHeaderHeight = value
        }
    }

    @available(*, deprecated, renamed: "estimatedHeaderHeight()")
    @discardableResult
    public func estimatedSectionHeaderHeight(_ value: CGFloat) -> Self {
        return addAttributes(key: "estimatedSectionHeaderHeight", value: value) {
            $0.estimatedSectionHeaderHeight = value
        }
    }

    /// `estimatedSectionFooterHeight`
    @discardableResult
    public func estimatedFooterHeight(_ value: CGFloat) -> Self {
        return addAttributes(key: "estimatedSectionFooterHeight", value: value) {
            $0.estimatedSectionFooterHeight = value
        }
    }

    @available(*, deprecated, renamed: "estimatedFooterHeight()")
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

    /// `backgroundView`
    @discardableResult
    public func background(_ value: UIView?) -> Self {
        return addAttributes(key: "backgroundView", value: value) {
            $0.backgroundView = value
        }
    }

    @available(*, deprecated, renamed: "background()")
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

    /// `allowsSelection`
    @discardableResult
    public func selectable(_ value: Bool) -> Self {
        return addAttributes(key: "allowsSelection", value: value) {
            $0.allowsSelection = value
        }
    }

    @available(*, deprecated, renamed: "selectable()")
    @discardableResult
    public func allowsSelection(_ value: Bool) -> Self {
        return addAttributes(key: "allowsSelection", value: value) {
            $0.allowsSelection = value
        }
    }

    /// `allowsSelectionDuringEditing`
    @discardableResult
    public func selectableDuringEditing(_ value: Bool) -> Self {
        return addAttributes(key: "allowsSelectionDuringEditing", value: value) {
            $0.allowsSelectionDuringEditing = value
        }
    }

    @available(*, deprecated, renamed: "selectableDuringEditing()")
    @discardableResult
    public func allowsSelectionDuringEditing(_ value: Bool) -> Self {
        return addAttributes(key: "allowsSelectionDuringEditing", value: value) {
            $0.allowsSelectionDuringEditing = value
        }
    }

    /// `allowsMultipleSelection`
    @discardableResult
    public func multiSelectable(_ value: Bool) -> Self {
        return addAttributes(key: "allowsMultipleSelection", value: value) {
            $0.allowsMultipleSelection = value
        }
    }

    @available(*, deprecated, renamed: "multiSelectable()")
    @discardableResult
    public func allowsMultipleSelection(_ value: Bool) -> Self {
        return addAttributes(key: "allowsMultipleSelection", value: value) {
            $0.allowsMultipleSelection = value
        }
    }

    /// `allowsMultipleSelectionDuringEditing`
    @discardableResult
    public func multiSelectableDuringEditing(_ value: Bool) -> Self {
        return addAttributes(key: "allowsMultipleSelectionDuringEditing", value: value) {
            $0.allowsMultipleSelectionDuringEditing = value
        }
    }

    @available(*, deprecated, renamed: "multiSelectableDuringEditing()")
    @discardableResult
    public func allowsMultipleSelectionDuringEditing(_ value: Bool) -> Self {
        return addAttributes(key: "allowsMultipleSelectionDuringEditing", value: value) {
            $0.allowsMultipleSelectionDuringEditing = value
        }
    }

    /// `sectionIndexMinimumDisplayRowCount`
    @discardableResult
    public func sectionIndexMinDisplayRowCount(_ value: Int) -> Self {
        return addAttributes(key: "sectionIndexMinimumDisplayRowCount", value: value) {
            $0.sectionIndexMinimumDisplayRowCount = value
        }
    }

    @available(*, deprecated, renamed: "sectionIndexMinDisplayRowCount()")
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

    /// `sectionIndexBackgroundColor`
    @discardableResult
    public func sectionIndexBackground(_ value: UIColor?) -> Self {
        return addAttributes(key: "sectionIndexBackgroundColor", value: value) {
            $0.sectionIndexBackgroundColor = value
        }
    }

    @available(*, deprecated, renamed: "sectionIndexBackground()")
    @discardableResult
    public func sectionIndexBackgroundColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "sectionIndexBackgroundColor", value: value) {
            $0.sectionIndexBackgroundColor = value
        }
    }

    /// `sectionIndexTrackingBackgroundColor`
    @discardableResult
    public func sectionIndexTrackingBackground(_ value: UIColor?) -> Self {
        return addAttributes(key: "sectionIndexTrackingBackgroundColor", value: value) {
            $0.sectionIndexTrackingBackgroundColor = value
        }
    }

    @available(*, deprecated, renamed: "sectionIndexTrackingBackground()")
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

    /// `cellLayoutMarginsFollowReadableWidth`
    @discardableResult
    public func cellMarginsFollowReadableWidth(_ value: Bool) -> Self {
        return addAttributes(key: "cellLayoutMarginsFollowReadableWidth", value: value) {
            $0.cellLayoutMarginsFollowReadableWidth = value
        }
    }

    @available(*, deprecated, renamed: "cellMarginsFollowReadableWidth()")
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

    /// `remembersLastFocusedIndexPath`
    @discardableResult
    public func remembersLastFocus(_ value: Bool) -> Self {
        return addAttributes(key: "remembersLastFocusedIndexPath", value: value) {
            $0.remembersLastFocusedIndexPath = value
        }
    }

    @available(*, deprecated, renamed: "remembersLastFocus()")
    @discardableResult
    public func remembersLastFocusedIndexPath(_ value: Bool) -> Self {
        return addAttributes(key: "remembersLastFocusedIndexPath", value: value) {
            $0.remembersLastFocusedIndexPath = value
        }
    }

    /// `dragInteractionEnabled`
    @available(iOS 11.0, *)
    @discardableResult
    public func draggable(_ value: Bool) -> Self {
        return addAttributes(key: "dragInteractionEnabled", value: value) {
            $0.dragInteractionEnabled = value
        }
    }

    @available(*, deprecated, renamed: "draggable()")
    @available(iOS 11.0, *)
    @discardableResult
    public func dragInteractionEnabled(_ value: Bool) -> Self {
        return addAttributes(key: "dragInteractionEnabled", value: value) {
            $0.dragInteractionEnabled = value
        }
    }
}
