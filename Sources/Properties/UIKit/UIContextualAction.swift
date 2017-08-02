//
//  UIContextualAction.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 11.0, *)
extension PandaChain where Object: UIContextualAction {
    @discardableResult
    public func title(_ value: String?) -> PandaChain {
        object.title = value
        return self
    }

    /// `backgroundColor`
    @discardableResult
    public func background(_ value: UIColor?) -> PandaChain {
        object.backgroundColor = value
        return self
    }

    @available(*, deprecated, renamed: "background()")
    @discardableResult
    public func backgroundColor(_ value: UIColor?) -> PandaChain {
        object.backgroundColor = value
        return self
    }

    @discardableResult
    public func image(_ value: UIImage?) -> PandaChain {
        object.image = value
        return self
    }
}
