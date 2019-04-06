//
//  UIBarButtonItemGroup.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 9.0, *)
public protocol UIBarButtonItemGroupConvertible {}

@available(iOS 9.0, *)
extension UIBarButtonItemGroup: UIBarButtonItemGroupConvertible {}
@available(iOS 9.0, *)
extension PandaChain: UIBarButtonItemGroupConvertible {}

@available(iOS 9.0, *)
extension PandaChain where Object: UIBarButtonItemGroup {
    @discardableResult
    public func barButtonItems(_ value: [UIBarButtonItemConvertible]) -> PandaChain {
        object.barButtonItems = unboxArray(value)
        return self
    }

    @discardableResult
    public func representativeItem(_ value: UIBarButtonItemConvertible?) -> PandaChain {
        object.representativeItem = unbox(value)
        return self
    }
}
