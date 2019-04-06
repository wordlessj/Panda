//
//  UILayoutGuide.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 9.0, *)
extension PandaChain where Object: UILayoutGuide {
    @discardableResult
    public func owningView(_ value: UIViewConvertible?) -> PandaChain {
        object.owningView = unbox(value)
        return self
    }

    @discardableResult
    public func identifier(_ value: String) -> PandaChain {
        object.identifier = value
        return self
    }
}
