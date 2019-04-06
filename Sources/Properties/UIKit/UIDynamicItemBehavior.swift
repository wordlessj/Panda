//
//  UIDynamicItemBehavior.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIDynamicItemBehavior {
    @discardableResult
    public func elasticity(_ value: CGFloat) -> PandaChain {
        object.elasticity = value
        return self
    }

    @discardableResult
    public func friction(_ value: CGFloat) -> PandaChain {
        object.friction = value
        return self
    }

    @discardableResult
    public func density(_ value: CGFloat) -> PandaChain {
        object.density = value
        return self
    }

    @discardableResult
    public func resistance(_ value: CGFloat) -> PandaChain {
        object.resistance = value
        return self
    }

    @discardableResult
    public func angularResistance(_ value: CGFloat) -> PandaChain {
        object.angularResistance = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func charge(_ value: CGFloat) -> PandaChain {
        object.charge = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func isAnchored(_ value: Bool) -> PandaChain {
        object.isAnchored = value
        return self
    }

    @discardableResult
    public func allowsRotation(_ value: Bool) -> PandaChain {
        object.allowsRotation = value
        return self
    }
}
