//
//  UIPrintPageRenderer.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIPrintPageRenderer {
    @discardableResult
    public func headerHeight(_ value: CGFloat) -> PandaChain {
        object.headerHeight = value
        return self
    }

    @discardableResult
    public func footerHeight(_ value: CGFloat) -> PandaChain {
        object.footerHeight = value
        return self
    }

    @discardableResult
    public func printFormatters(_ value: [UIPrintFormatter]?) -> PandaChain {
        object.printFormatters = value
        return self
    }
}
