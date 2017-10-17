//
//  UIPrintPageRenderer.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

public protocol UIPrintPageRendererConvertible {}

extension UIPrintPageRenderer: UIPrintPageRendererConvertible {}
extension PandaChain: UIPrintPageRendererConvertible {}

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
    public func printFormatters(_ value: [UIPrintFormatterConvertible]?) -> PandaChain {
        object.printFormatters = unboxArray(value)
        return self
    }
}
