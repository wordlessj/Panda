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

    /// `identifier`
    @discardableResult
    public func id(_ value: String) -> PandaChain {
        object.identifier = value
        return self
    }

    @available(*, deprecated, renamed: "id()")
    @discardableResult
    public func identifier(_ value: String) -> PandaChain {
        object.identifier = value
        return self
    }
}
