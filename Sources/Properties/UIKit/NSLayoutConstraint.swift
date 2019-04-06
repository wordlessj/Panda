//
//  NSLayoutConstraint.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: NSLayoutConstraint {
    @discardableResult
    public func priority(_ value: UILayoutPriority) -> PandaChain {
        object.priority = value
        return self
    }

    @discardableResult
    public func shouldBeArchived(_ value: Bool) -> PandaChain {
        object.shouldBeArchived = value
        return self
    }

    @discardableResult
    public func constant(_ value: CGFloat) -> PandaChain {
        object.constant = value
        return self
    }

    @discardableResult
    public func isActive(_ value: Bool) -> PandaChain {
        object.isActive = value
        return self
    }

    @discardableResult
    public func identifier(_ value: String?) -> PandaChain {
        object.identifier = value
        return self
    }
}
