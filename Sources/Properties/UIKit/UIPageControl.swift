//
//  UIPageControl.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UIPageControl {
    @discardableResult
    public func numberOfPages(_ value: Int) -> Self {
        return addAttributes(key: "numberOfPages", value: value) {
            $0.numberOfPages = value
        }
    }

    @discardableResult
    public func currentPage(_ value: Int) -> Self {
        return addAttributes(key: "currentPage", value: value) {
            $0.currentPage = value
        }
    }

    @discardableResult
    public func hidesForSinglePage(_ value: Bool) -> Self {
        return addAttributes(key: "hidesForSinglePage", value: value) {
            $0.hidesForSinglePage = value
        }
    }

    @discardableResult
    public func defersCurrentPageDisplay(_ value: Bool) -> Self {
        return addAttributes(key: "defersCurrentPageDisplay", value: value) {
            $0.defersCurrentPageDisplay = value
        }
    }

    @discardableResult
    public func pageIndicatorTintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "pageIndicatorTintColor", value: value) {
            $0.pageIndicatorTintColor = value
        }
    }

    @discardableResult
    public func currentPageIndicatorTintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "currentPageIndicatorTintColor", value: value) {
            $0.currentPageIndicatorTintColor = value
        }
    }
}
