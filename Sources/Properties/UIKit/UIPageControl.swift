//
//  UIPageControl.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIPageControl {
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

    @discardableResult
    public func pageIndicatorTintColor(_ value: UIColor?) -> PandaChain {
        object.pageIndicatorTintColor = value
        return self
    }

    @discardableResult
    public func currentPageIndicatorTintColor(_ value: UIColor?) -> PandaChain {
        object.currentPageIndicatorTintColor = value
        return self
    }
}
