//
//  UIFieldBehavior.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 9.0, *)
extension PandaChain where Object: UIFieldBehavior {
    @discardableResult
    public func position(_ value: CGPoint) -> PandaChain {
        object.position = value
        return self
    }

    @discardableResult
    public func region(_ value: UIRegion) -> PandaChain {
        object.region = value
        return self
    }

    @discardableResult
    public func strength(_ value: CGFloat) -> PandaChain {
        object.strength = value
        return self
    }

    @discardableResult
    public func falloff(_ value: CGFloat) -> PandaChain {
        object.falloff = value
        return self
    }

    /// `minimumRadius`
    @discardableResult
    public func minRadius(_ value: CGFloat) -> PandaChain {
        object.minimumRadius = value
        return self
    }

    @available(*, deprecated, renamed: "minRadius()")
    @discardableResult
    public func minimumRadius(_ value: CGFloat) -> PandaChain {
        object.minimumRadius = value
        return self
    }

    @discardableResult
    public func direction(_ value: CGVector) -> PandaChain {
        object.direction = value
        return self
    }

    @discardableResult
    public func smoothness(_ value: CGFloat) -> PandaChain {
        object.smoothness = value
        return self
    }

    @discardableResult
    public func animationSpeed(_ value: CGFloat) -> PandaChain {
        object.animationSpeed = value
        return self
    }
}
