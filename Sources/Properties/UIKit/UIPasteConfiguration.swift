//
//  UIPasteConfiguration.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 11.0, *)
public protocol UIPasteConfigurationConvertible {}

@available(iOS 11.0, *)
extension UIPasteConfiguration: UIPasteConfigurationConvertible {}
@available(iOS 11.0, *)
extension PandaChain: UIPasteConfigurationConvertible {}

@available(iOS 11.0, *)
extension PandaChain where Object: UIPasteConfiguration {
    /// `acceptableTypeIdentifiers`
    @discardableResult
    public func acceptableTypeIDs(_ value: [String]) -> PandaChain {
        object.acceptableTypeIdentifiers = value
        return self
    }

    @available(*, deprecated, renamed: "acceptableTypeIDs()")
    @discardableResult
    public func acceptableTypeIdentifiers(_ value: [String]) -> PandaChain {
        object.acceptableTypeIdentifiers = value
        return self
    }
}
