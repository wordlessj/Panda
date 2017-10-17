//
//  UIPrintFormatter.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

public protocol UIPrintFormatterConvertible {}

extension UIPrintFormatter: UIPrintFormatterConvertible {}
extension PandaChain: UIPrintFormatterConvertible {}

extension PandaChain where Object: UIPrintFormatter {
    /// `maximumContentHeight`
    @discardableResult
    public func maxContentHeight(_ value: CGFloat) -> PandaChain {
        object.maximumContentHeight = value
        return self
    }

    @available(*, deprecated, renamed: "maxContentHeight()")
    @discardableResult
    public func maximumContentHeight(_ value: CGFloat) -> PandaChain {
        object.maximumContentHeight = value
        return self
    }

    /// `maximumContentWidth`
    @discardableResult
    public func maxContentWidth(_ value: CGFloat) -> PandaChain {
        object.maximumContentWidth = value
        return self
    }

    @available(*, deprecated, renamed: "maxContentWidth()")
    @discardableResult
    public func maximumContentWidth(_ value: CGFloat) -> PandaChain {
        object.maximumContentWidth = value
        return self
    }

    @available(iOS, introduced: 4.2, deprecated: 10.0)
    @discardableResult
    public func contentInsets(_ value: UIEdgeInsets) -> PandaChain {
        object.contentInsets = value
        return self
    }

    @discardableResult
    public func perPageContentInsets(_ value: UIEdgeInsets) -> PandaChain {
        object.perPageContentInsets = value
        return self
    }

    @discardableResult
    public func startPage(_ value: Int) -> PandaChain {
        object.startPage = value
        return self
    }
}
