//
//  UICollisionBehavior.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UICollisionBehavior {
    @discardableResult
    public func collisionMode(_ value: UICollisionBehavior.Mode) -> PandaChain {
        object.collisionMode = value
        return self
    }

    @discardableResult
    public func translatesReferenceBoundsIntoBoundary(_ value: Bool) -> PandaChain {
        object.translatesReferenceBoundsIntoBoundary = value
        return self
    }

    @discardableResult
    public func collisionDelegate(_ value: UICollisionBehaviorDelegate?) -> PandaChain {
        object.collisionDelegate = value
        return self
    }

    @discardableResult
    public func translatesReferenceBoundsIntoBoundary(with insets: UIEdgeInsets) -> PandaChain {
        object.setTranslatesReferenceBoundsIntoBoundary(with: insets)
        return self
    }
}
