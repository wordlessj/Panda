//
//  UIPrintFormatter.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIPrintFormatter {
    @discardableResult
    public func maximumContentHeight(_ value: CGFloat) -> PandaChain {
        object.maximumContentHeight = value
        return self
    }

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
