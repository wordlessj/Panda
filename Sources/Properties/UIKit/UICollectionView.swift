//
//  UICollectionView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UICollectionView {
    /// `collectionViewLayout`
    @discardableResult
    public func layout(_ value: UICollectionViewLayout) -> Self {
        return addAttributes(key: "collectionViewLayout", value: value) {
            $0.collectionViewLayout = value
        }
    }

    @available(*, deprecated, renamed: "layout()")
    @discardableResult
    public func collectionViewLayout(_ value: UICollectionViewLayout) -> Self {
        return addAttributes(key: "collectionViewLayout", value: value) {
            $0.collectionViewLayout = value
        }
    }

    @discardableResult
    public func delegate(_ value: UICollectionViewDelegate?) -> Self {
        return addAttributes(key: "delegate", value: value) {
            $0.delegate = value
        }
    }

    @discardableResult
    public func dataSource(_ value: UICollectionViewDataSource?) -> Self {
        return addAttributes(key: "dataSource", value: value) {
            $0.dataSource = value
        }
    }

    /// `prefetchDataSource`
    @available(iOS 10.0, *)
    @discardableResult
    public func prefetchSource(_ value: UICollectionViewDataSourcePrefetching?) -> Self {
        return addAttributes(key: "prefetchDataSource", value: value) {
            $0.prefetchDataSource = value
        }
    }

    @available(*, deprecated, renamed: "prefetchSource()")
    @available(iOS 10.0, *)
    @discardableResult
    public func prefetchDataSource(_ value: UICollectionViewDataSourcePrefetching?) -> Self {
        return addAttributes(key: "prefetchDataSource", value: value) {
            $0.prefetchDataSource = value
        }
    }

    /// `isPrefetchingEnabled`
    @available(iOS 10.0, *)
    @discardableResult
    public func prefetchs(_ value: Bool) -> Self {
        return addAttributes(key: "isPrefetchingEnabled", value: value) {
            $0.isPrefetchingEnabled = value
        }
    }

    @available(*, deprecated, renamed: "prefetchs()")
    @available(iOS 10.0, *)
    @discardableResult
    public func prefetchingEnabled(_ value: Bool) -> Self {
        return addAttributes(key: "isPrefetchingEnabled", value: value) {
            $0.isPrefetchingEnabled = value
        }
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func dragDelegate(_ value: UICollectionViewDragDelegate?) -> Self {
        return addAttributes(key: "dragDelegate", value: value) {
            $0.dragDelegate = value
        }
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func dropDelegate(_ value: UICollectionViewDropDelegate?) -> Self {
        return addAttributes(key: "dropDelegate", value: value) {
            $0.dropDelegate = value
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

    @available(iOS 11.0, *)
    @discardableResult
    public func reorderingCadence(_ value: UICollectionViewReorderingCadence) -> Self {
        return addAttributes(key: "reorderingCadence", value: value) {
            $0.reorderingCadence = value
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
}
