//
//  UIScrollView.swift
//  Panda
//
//  Created by Javier on 11/2/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import UIKit

extension UIScrollView {
    @discardableResult
    public func contentOffset(_ value: CGPoint) -> Self {
        contentOffset = value
        return self
    }

    @discardableResult
    public func contentSize(_ value: CGSize) -> Self {
        contentSize = value
        return self
    }

    @discardableResult
    public func contentInset(_ value: UIEdgeInsets) -> Self {
        contentInset = value
        return self
    }

    @discardableResult
    public func isScrollEnabled(_ value: Bool) -> Self {
        isScrollEnabled = value
        return self
    }

    @discardableResult
    public func isDirectionalLockEnabled(_ value: Bool) -> Self {
        isDirectionalLockEnabled = value
        return self
    }

    @discardableResult
    public func scrollsToTop(_ value: Bool) -> Self {
        scrollsToTop = value
        return self
    }

    @discardableResult
    public func isPagingEnabled(_ value: Bool) -> Self {
        isPagingEnabled = value
        return self
    }

    @discardableResult
    public func bounces(_ value: Bool) -> Self {
        bounces = value
        return self
    }

    @discardableResult
    public func alwaysBounceVertical(_ value: Bool) -> Self {
        alwaysBounceVertical = value
        return self
    }

    @discardableResult
    public func alwaysBounceHorizontal(_ value: Bool) -> Self {
        alwaysBounceHorizontal = value
        return self
    }

    @discardableResult
    public func canCancelContentTouches(_ value: Bool) -> Self {
        canCancelContentTouches = value
        return self
    }

    @discardableResult
    public func delaysContentTouches(_ value: Bool) -> Self {
        delaysContentTouches = value
        return self
    }

    @discardableResult
    public func decelerationRate(_ value: CGFloat) -> Self {
        decelerationRate = value
        return self
    }

    @discardableResult
    public func indicatorStyle(_ value: UIScrollViewIndicatorStyle) -> Self {
        indicatorStyle = value
        return self
    }

    @discardableResult
    public func scrollIndicatorInsets(_ value: UIEdgeInsets) -> Self {
        scrollIndicatorInsets = value
        return self
    }

    @discardableResult
    public func showsHorizontalScrollIndicator(_ value: Bool) -> Self {
        showsHorizontalScrollIndicator = value
        return self
    }

    @discardableResult
    public func showsVerticalScrollIndicator(_ value: Bool) -> Self {
        showsVerticalScrollIndicator = value
        return self
    }

    @discardableResult
    public func zoomScale(_ value: CGFloat) -> Self {
        zoomScale = value
        return self
    }

    @discardableResult
    public func maximumZoomScale(_ value: CGFloat) -> Self {
        maximumZoomScale = value
        return self
    }

    @discardableResult
    public func minimumZoomScale(_ value: CGFloat) -> Self {
        minimumZoomScale = value
        return self
    }

    @discardableResult
    public func bouncesZoom(_ value: Bool) -> Self {
        bouncesZoom = value
        return self
    }

    @discardableResult
    public func delegate(_ value: UIScrollViewDelegate?) -> Self {
        delegate = value
        return self
    }

    @discardableResult
    public func keyboardDismissMode(_ value: UIScrollViewKeyboardDismissMode) -> Self {
        keyboardDismissMode = value
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func refreshControl(_ value: UIRefreshControl?) -> Self {
        refreshControl = value
        return self
    }
}
