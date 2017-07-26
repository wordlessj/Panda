//
//  UIPageControl.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIPageControl {
    /// `numberOfPages`
    @discardableResult
    public func pages(_ value: Int) -> PandaChain {
        object.numberOfPages = value
        return self
    }

    @available(*, deprecated, renamed: "pages()")
    @discardableResult
    public func numberOfPages(_ value: Int) -> PandaChain {
        object.numberOfPages = value
        return self
    }

    @discardableResult
    public func currentPage(_ value: Int) -> PandaChain {
        object.currentPage = value
        return self
    }

    @discardableResult
    public func hidesForSinglePage(_ value: Bool) -> PandaChain {
        object.hidesForSinglePage = value
        return self
    }

    @discardableResult
    public func defersCurrentPageDisplay(_ value: Bool) -> PandaChain {
        object.defersCurrentPageDisplay = value
        return self
    }

    /// `pageIndicatorTintColor`
    @discardableResult
    public func pageIndicatorTint(_ value: UIColor?) -> PandaChain {
        object.pageIndicatorTintColor = value
        return self
    }

    @available(*, deprecated, renamed: "pageIndicatorTint()")
    @discardableResult
    public func pageIndicatorTintColor(_ value: UIColor?) -> PandaChain {
        object.pageIndicatorTintColor = value
        return self
    }

    /// `currentPageIndicatorTintColor`
    @discardableResult
    public func currentPageIndicatorTint(_ value: UIColor?) -> PandaChain {
        object.currentPageIndicatorTintColor = value
        return self
    }

    @available(*, deprecated, renamed: "currentPageIndicatorTint()")
    @discardableResult
    public func currentPageIndicatorTintColor(_ value: UIColor?) -> PandaChain {
        object.currentPageIndicatorTintColor = value
        return self
    }
}
