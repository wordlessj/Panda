//
//  UIBarButtonItemGroup.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 9.0, *)
extension PandaChain where Object: UIBarButtonItemGroup {
    @discardableResult
    public func representativeItem(_ value: UIBarButtonItem?) -> PandaChain {
        object.representativeItem = value
        return self
    }
}
