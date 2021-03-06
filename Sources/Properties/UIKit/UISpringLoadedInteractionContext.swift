//
//  UISpringLoadedInteractionContext.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 11.0, *)
extension PandaChain where Object: UISpringLoadedInteractionContext {
    @discardableResult
    public func targetView(_ value: UIViewConvertible?) -> PandaChain {
        object.targetView = unbox(value)
        return self
    }

    @discardableResult
    public func targetItem(_ value: Any?) -> PandaChain {
        object.targetItem = value
        return self
    }
}
