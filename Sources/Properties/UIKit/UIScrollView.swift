//
//  UIScrollView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UIScrollView {
    @discardableResult
    public func contentOffset(_ value: CGPoint) -> Self {
        return addAttributes(key: "contentOffset", value: value) {
            $0.contentOffset = value
        }
    }

    @discardableResult
    public func contentSize(_ value: CGSize) -> Self {
        return addAttributes(key: "contentSize", value: value) {
            $0.contentSize = value
        }
    }

    @discardableResult
    public func contentInset(_ value: UIEdgeInsets) -> Self {
        return addAttributes(key: "contentInset", value: value) {
            $0.contentInset = value
        }
    }

    /// `contentInsetAdjustmentBehavior`
    @available(iOS 11.0, *)
    @discardableResult
    public func contentInsetAdjust(_ value: UIScrollViewContentInsetAdjustmentBehavior) -> Self {
        return addAttributes(key: "contentInsetAdjustmentBehavior", value: value) {
            $0.contentInsetAdjustmentBehavior = value
        }
    }

    @available(*, deprecated, renamed: "contentInsetAdjust()")
    @available(iOS 11.0, *)
    @discardableResult
    public func contentInsetAdjustmentBehavior(_ value: UIScrollViewContentInsetAdjustmentBehavior) -> Self {
        return addAttributes(key: "contentInsetAdjustmentBehavior", value: value) {
            $0.contentInsetAdjustmentBehavior = value
        }
    }

    @discardableResult
    public func delegate(_ value: UIScrollViewDelegate?) -> Self {
        return addAttributes(key: "delegate", value: value) {
            $0.delegate = value
        }
    }

    /// `isDirectionalLockEnabled`
    @discardableResult
    public func directionLocked(_ value: Bool) -> Self {
        return addAttributes(key: "isDirectionalLockEnabled", value: value) {
            $0.isDirectionalLockEnabled = value
        }
    }

    @available(*, deprecated, renamed: "directionLocked()")
    @discardableResult
    public func directionalLockEnabled(_ value: Bool) -> Self {
        return addAttributes(key: "isDirectionalLockEnabled", value: value) {
            $0.isDirectionalLockEnabled = value
        }
    }

    @discardableResult
    public func bounces(_ value: Bool) -> Self {
        return addAttributes(key: "bounces", value: value) {
            $0.bounces = value
        }
    }

    @discardableResult
    public func alwaysBounceVertical(_ value: Bool) -> Self {
        return addAttributes(key: "alwaysBounceVertical", value: value) {
            $0.alwaysBounceVertical = value
        }
    }

    @discardableResult
    public func alwaysBounceHorizontal(_ value: Bool) -> Self {
        return addAttributes(key: "alwaysBounceHorizontal", value: value) {
            $0.alwaysBounceHorizontal = value
        }
    }

    /// `isPagingEnabled`
    @discardableResult
    public func paged(_ value: Bool) -> Self {
        return addAttributes(key: "isPagingEnabled", value: value) {
            $0.isPagingEnabled = value
        }
    }

    @available(*, deprecated, renamed: "paged()")
    @discardableResult
    public func pagingEnabled(_ value: Bool) -> Self {
        return addAttributes(key: "isPagingEnabled", value: value) {
            $0.isPagingEnabled = value
        }
    }

    /// `isScrollEnabled`
    @discardableResult
    public func scrollable(_ value: Bool) -> Self {
        return addAttributes(key: "isScrollEnabled", value: value) {
            $0.isScrollEnabled = value
        }
    }

    @available(*, deprecated, renamed: "scrollable()")
    @discardableResult
    public func scrollEnabled(_ value: Bool) -> Self {
        return addAttributes(key: "isScrollEnabled", value: value) {
            $0.isScrollEnabled = value
        }
    }

    /// `showsHorizontalScrollIndicator`
    @discardableResult
    public func showsHorizontalIndicator(_ value: Bool) -> Self {
        return addAttributes(key: "showsHorizontalScrollIndicator", value: value) {
            $0.showsHorizontalScrollIndicator = value
        }
    }

    @available(*, deprecated, renamed: "showsHorizontalIndicator()")
    @discardableResult
    public func showsHorizontalScrollIndicator(_ value: Bool) -> Self {
        return addAttributes(key: "showsHorizontalScrollIndicator", value: value) {
            $0.showsHorizontalScrollIndicator = value
        }
    }

    /// `showsVerticalScrollIndicator`
    @discardableResult
    public func showsVerticalIndicator(_ value: Bool) -> Self {
        return addAttributes(key: "showsVerticalScrollIndicator", value: value) {
            $0.showsVerticalScrollIndicator = value
        }
    }

    @available(*, deprecated, renamed: "showsVerticalIndicator()")
    @discardableResult
    public func showsVerticalScrollIndicator(_ value: Bool) -> Self {
        return addAttributes(key: "showsVerticalScrollIndicator", value: value) {
            $0.showsVerticalScrollIndicator = value
        }
    }

    /// `scrollIndicatorInsets`
    @discardableResult
    public func indicatorInsets(_ value: UIEdgeInsets) -> Self {
        return addAttributes(key: "scrollIndicatorInsets", value: value) {
            $0.scrollIndicatorInsets = value
        }
    }

    @available(*, deprecated, renamed: "indicatorInsets()")
    @discardableResult
    public func scrollIndicatorInsets(_ value: UIEdgeInsets) -> Self {
        return addAttributes(key: "scrollIndicatorInsets", value: value) {
            $0.scrollIndicatorInsets = value
        }
    }

    @discardableResult
    public func indicatorStyle(_ value: UIScrollViewIndicatorStyle) -> Self {
        return addAttributes(key: "indicatorStyle", value: value) {
            $0.indicatorStyle = value
        }
    }

    @discardableResult
    public func decelerationRate(_ value: CGFloat) -> Self {
        return addAttributes(key: "decelerationRate", value: value) {
            $0.decelerationRate = value
        }
    }

    @discardableResult
    public func indexDisplayMode(_ value: UIScrollViewIndexDisplayMode) -> Self {
        return addAttributes(key: "indexDisplayMode", value: value) {
            $0.indexDisplayMode = value
        }
    }

    @discardableResult
    public func delaysContentTouches(_ value: Bool) -> Self {
        return addAttributes(key: "delaysContentTouches", value: value) {
            $0.delaysContentTouches = value
        }
    }

    @discardableResult
    public func canCancelContentTouches(_ value: Bool) -> Self {
        return addAttributes(key: "canCancelContentTouches", value: value) {
            $0.canCancelContentTouches = value
        }
    }

    /// `minimumZoomScale`
    @discardableResult
    public func minZoomScale(_ value: CGFloat) -> Self {
        return addAttributes(key: "minimumZoomScale", value: value) {
            $0.minimumZoomScale = value
        }
    }

    @available(*, deprecated, renamed: "minZoomScale()")
    @discardableResult
    public func minimumZoomScale(_ value: CGFloat) -> Self {
        return addAttributes(key: "minimumZoomScale", value: value) {
            $0.minimumZoomScale = value
        }
    }

    /// `maximumZoomScale`
    @discardableResult
    public func maxZoomScale(_ value: CGFloat) -> Self {
        return addAttributes(key: "maximumZoomScale", value: value) {
            $0.maximumZoomScale = value
        }
    }

    @available(*, deprecated, renamed: "maxZoomScale()")
    @discardableResult
    public func maximumZoomScale(_ value: CGFloat) -> Self {
        return addAttributes(key: "maximumZoomScale", value: value) {
            $0.maximumZoomScale = value
        }
    }

    @discardableResult
    public func zoomScale(_ value: CGFloat) -> Self {
        return addAttributes(key: "zoomScale", value: value) {
            $0.zoomScale = value
        }
    }

    @discardableResult
    public func bouncesZoom(_ value: Bool) -> Self {
        return addAttributes(key: "bouncesZoom", value: value) {
            $0.bouncesZoom = value
        }
    }

    @discardableResult
    public func scrollsToTop(_ value: Bool) -> Self {
        return addAttributes(key: "scrollsToTop", value: value) {
            $0.scrollsToTop = value
        }
    }

    @discardableResult
    public func keyboardDismissMode(_ value: UIScrollViewKeyboardDismissMode) -> Self {
        return addAttributes(key: "keyboardDismissMode", value: value) {
            $0.keyboardDismissMode = value
        }
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func refreshControl(_ value: UIRefreshControl?) -> Self {
        return addAttributes(key: "refreshControl", value: value) {
            $0.refreshControl = value
        }
    }
}
