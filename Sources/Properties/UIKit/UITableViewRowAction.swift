//
//  UITableViewRowAction.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UITableViewRowAction {
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
    public func backgroundEffect(_ value: UIVisualEffect?) -> PandaChain {
        object.backgroundEffect = value
        return self
    }
}
