//
//  CAEmitterCell.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import QuartzCore

extension PandaChain where Object: CAEmitterCell {
    @discardableResult
    public func name(_ value: String?) -> PandaChain {
        object.name = value
        return self
    }

    @discardableResult
    public func enabled(_ value: Bool) -> PandaChain {
        object.isEnabled = value
        return self
    }

    @discardableResult
    public func birthRate(_ value: Float) -> PandaChain {
        object.birthRate = value
        return self
    }

    @discardableResult
    public func lifetime(_ value: Float) -> PandaChain {
        object.lifetime = value
        return self
    }

    @discardableResult
    public func lifetimeRange(_ value: Float) -> PandaChain {
        object.lifetimeRange = value
        return self
    }

    @discardableResult
    public func emissionLatitude(_ value: CGFloat) -> PandaChain {
        object.emissionLatitude = value
        return self
    }

    @discardableResult
    public func emissionLongitude(_ value: CGFloat) -> PandaChain {
        object.emissionLongitude = value
        return self
    }

    @discardableResult
    public func emissionRange(_ value: CGFloat) -> PandaChain {
        object.emissionRange = value
        return self
    }

    @discardableResult
    public func velocity(_ value: CGFloat) -> PandaChain {
        object.velocity = value
        return self
    }

    @discardableResult
    public func velocityRange(_ value: CGFloat) -> PandaChain {
        object.velocityRange = value
        return self
    }

    @discardableResult
    public func xAcceleration(_ value: CGFloat) -> PandaChain {
        object.xAcceleration = value
        return self
    }

    @discardableResult
    public func yAcceleration(_ value: CGFloat) -> PandaChain {
        object.yAcceleration = value
        return self
    }

    @discardableResult
    public func zAcceleration(_ value: CGFloat) -> PandaChain {
        object.zAcceleration = value
        return self
    }

    @discardableResult
    public func scale(_ value: CGFloat) -> PandaChain {
        object.scale = value
        return self
    }

    @discardableResult
    public func scaleRange(_ value: CGFloat) -> PandaChain {
        object.scaleRange = value
        return self
    }

    @discardableResult
    public func scaleSpeed(_ value: CGFloat) -> PandaChain {
        object.scaleSpeed = value
        return self
    }

    @discardableResult
    public func spin(_ value: CGFloat) -> PandaChain {
        object.spin = value
        return self
    }

    @discardableResult
    public func spinRange(_ value: CGFloat) -> PandaChain {
        object.spinRange = value
        return self
    }

    @discardableResult
    public func color(_ value: CGColor?) -> PandaChain {
        object.color = value
        return self
    }

    @discardableResult
    public func redRange(_ value: Float) -> PandaChain {
        object.redRange = value
        return self
    }

    @discardableResult
    public func greenRange(_ value: Float) -> PandaChain {
        object.greenRange = value
        return self
    }

    @discardableResult
    public func blueRange(_ value: Float) -> PandaChain {
        object.blueRange = value
        return self
    }

    @discardableResult
    public func alphaRange(_ value: Float) -> PandaChain {
        object.alphaRange = value
        return self
    }

    @discardableResult
    public func redSpeed(_ value: Float) -> PandaChain {
        object.redSpeed = value
        return self
    }

    @discardableResult
    public func greenSpeed(_ value: Float) -> PandaChain {
        object.greenSpeed = value
        return self
    }

    @discardableResult
    public func blueSpeed(_ value: Float) -> PandaChain {
        object.blueSpeed = value
        return self
    }

    @discardableResult
    public func alphaSpeed(_ value: Float) -> PandaChain {
        object.alphaSpeed = value
        return self
    }

    @discardableResult
    public func contents(_ value: Any?) -> PandaChain {
        object.contents = value
        return self
    }

    @discardableResult
    public func contentsRect(_ value: CGRect) -> PandaChain {
        object.contentsRect = value
        return self
    }

    @discardableResult
    public func contentsScale(_ value: CGFloat) -> PandaChain {
        object.contentsScale = value
        return self
    }

    @discardableResult
    public func minificationFilter(_ value: String) -> PandaChain {
        object.minificationFilter = value
        return self
    }

    @discardableResult
    public func magnificationFilter(_ value: String) -> PandaChain {
        object.magnificationFilter = value
        return self
    }

    @discardableResult
    public func minificationFilterBias(_ value: Float) -> PandaChain {
        object.minificationFilterBias = value
        return self
    }

    @discardableResult
    public func emitterCells(_ value: [CAEmitterCell]?) -> PandaChain {
        object.emitterCells = value
        return self
    }

    @discardableResult
    public func style(_ value: [AnyHashable: Any]?) -> PandaChain {
        object.style = value
        return self
    }
}
