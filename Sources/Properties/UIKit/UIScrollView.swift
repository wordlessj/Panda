//
//  UIScrollView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIScrollView {
    @discardableResult
    public func contentOffset(_ value: CGPoint) -> PandaChain {
        object.contentOffset = value
        return self
    }

    @discardableResult
    public func contentSize(_ value: CGSize) -> PandaChain {
        object.contentSize = value
        return self
    }

    @discardableResult
    public func contentInset(_ value: UIEdgeInsets) -> PandaChain {
        object.contentInset = value
        return self
    }

    /// `contentInsetAdjustmentBehavior`
    @available(iOS 11.0, *)
    @discardableResult
    public func contentInsetAdjust(_ value: UIScrollViewContentInsetAdjustmentBehavior) -> PandaChain {
        object.contentInsetAdjustmentBehavior = value
        return self
    }

    @available(*, deprecated, renamed: "contentInsetAdjust()")
    @available(iOS 11.0, *)
    @discardableResult
    public func contentInsetAdjustmentBehavior(_ value: UIScrollViewContentInsetAdjustmentBehavior) -> PandaChain {
        object.contentInsetAdjustmentBehavior = value
        return self
    }

    @discardableResult
    public func delegate(_ value: UIScrollViewDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    /// `isDirectionalLockEnabled`
    @discardableResult
    public func directionLocked(_ value: Bool) -> PandaChain {
        object.isDirectionalLockEnabled = value
        return self
    }

    @available(*, deprecated, renamed: "directionLocked()")
    @discardableResult
    public func directionalLockEnabled(_ value: Bool) -> PandaChain {
        object.isDirectionalLockEnabled = value
        return self
    }

    @discardableResult
    public func bounces(_ value: Bool) -> PandaChain {
        object.bounces = value
        return self
    }

    @discardableResult
    public func alwaysBounceVertical(_ value: Bool) -> PandaChain {
        object.alwaysBounceVertical = value
        return self
    }

    @discardableResult
    public func alwaysBounceHorizontal(_ value: Bool) -> PandaChain {
        object.alwaysBounceHorizontal = value
        return self
    }

    /// `isPagingEnabled`
    @discardableResult
    public func paged(_ value: Bool) -> PandaChain {
        object.isPagingEnabled = value
        return self
    }

    @available(*, deprecated, renamed: "paged()")
    @discardableResult
    public func pagingEnabled(_ value: Bool) -> PandaChain {
        object.isPagingEnabled = value
        return self
    }

    /// `isScrollEnabled`
    @discardableResult
    public func scrollable(_ value: Bool) -> PandaChain {
        object.isScrollEnabled = value
        return self
    }

    @available(*, deprecated, renamed: "scrollable()")
    @discardableResult
    public func scrollEnabled(_ value: Bool) -> PandaChain {
        object.isScrollEnabled = value
        return self
    }

    /// `showsHorizontalScrollIndicator`
    @discardableResult
    public func showsHorizontalIndicator(_ value: Bool) -> PandaChain {
        object.showsHorizontalScrollIndicator = value
        return self
    }

    @available(*, deprecated, renamed: "showsHorizontalIndicator()")
    @discardableResult
    public func showsHorizontalScrollIndicator(_ value: Bool) -> PandaChain {
        object.showsHorizontalScrollIndicator = value
        return self
    }

    /// `showsVerticalScrollIndicator`
    @discardableResult
    public func showsVerticalIndicator(_ value: Bool) -> PandaChain {
        object.showsVerticalScrollIndicator = value
        return self
    }

    @available(*, deprecated, renamed: "showsVerticalIndicator()")
    @discardableResult
    public func showsVerticalScrollIndicator(_ value: Bool) -> PandaChain {
        object.showsVerticalScrollIndicator = value
        return self
    }

    /// `scrollIndicatorInsets`
    @discardableResult
    public func indicatorInsets(_ value: UIEdgeInsets) -> PandaChain {
        object.scrollIndicatorInsets = value
        return self
    }

    @available(*, deprecated, renamed: "indicatorInsets()")
    @discardableResult
    public func scrollIndicatorInsets(_ value: UIEdgeInsets) -> PandaChain {
        object.scrollIndicatorInsets = value
        return self
    }

    @discardableResult
    public func indicatorStyle(_ value: UIScrollViewIndicatorStyle) -> PandaChain {
        object.indicatorStyle = value
        return self
    }

    @discardableResult
    public func decelerationRate(_ value: CGFloat) -> PandaChain {
        object.decelerationRate = value
        return self
    }

    @discardableResult
    public func indexDisplayMode(_ value: UIScrollViewIndexDisplayMode) -> PandaChain {
        object.indexDisplayMode = value
        return self
    }

    @discardableResult
    public func delaysContentTouches(_ value: Bool) -> PandaChain {
        object.delaysContentTouches = value
        return self
    }

    @discardableResult
    public func canCancelContentTouches(_ value: Bool) -> PandaChain {
        object.canCancelContentTouches = value
        return self
    }

    /// `minimumZoomScale`
    @discardableResult
    public func minZoomScale(_ value: CGFloat) -> PandaChain {
        object.minimumZoomScale = value
        return self
    }

    @available(*, deprecated, renamed: "minZoomScale()")
    @discardableResult
    public func minimumZoomScale(_ value: CGFloat) -> PandaChain {
        object.minimumZoomScale = value
        return self
    }

    /// `maximumZoomScale`
    @discardableResult
    public func maxZoomScale(_ value: CGFloat) -> PandaChain {
        object.maximumZoomScale = value
        return self
    }

    @available(*, deprecated, renamed: "maxZoomScale()")
    @discardableResult
    public func maximumZoomScale(_ value: CGFloat) -> PandaChain {
        object.maximumZoomScale = value
        return self
    }

    @discardableResult
    public func zoomScale(_ value: CGFloat) -> PandaChain {
        object.zoomScale = value
        return self
    }

    @discardableResult
    public func bouncesZoom(_ value: Bool) -> PandaChain {
        object.bouncesZoom = value
        return self
    }

    @discardableResult
    public func scrollsToTop(_ value: Bool) -> PandaChain {
        object.scrollsToTop = value
        return self
    }

    @discardableResult
    public func keyboardDismissMode(_ value: UIScrollViewKeyboardDismissMode) -> PandaChain {
        object.keyboardDismissMode = value
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func refreshControl(_ value: UIRefreshControl?) -> PandaChain {
        object.refreshControl = value
        return self
    }

    @discardableResult
    public func contentOffset(_ contentOffset: CGPoint, animated: Bool) -> PandaChain {
        object.setContentOffset(contentOffset, animated: animated)
        return self
    }

    @discardableResult
    public func zoomScale(_ scale: CGFloat, animated: Bool) -> PandaChain {
        object.setZoomScale(scale, animated: animated)
        return self
    }
}
