//
//  CAGradientLayer.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import QuartzCore

extension PandaChain where Object: CAGradientLayer {
    @discardableResult
    public func colors(_ value: [Any]?) -> PandaChain {
        object.colors = value
        return self
    }

    @discardableResult
    public func locations(_ value: [NSNumber]?) -> PandaChain {
        object.locations = value
        return self
    }

    @discardableResult
    public func startPoint(_ value: CGPoint) -> PandaChain {
        object.startPoint = value
        return self
    }

    @discardableResult
    public func endPoint(_ value: CGPoint) -> PandaChain {
        object.endPoint = value
        return self
    }

    @discardableResult
    public func type(_ value: String) -> PandaChain {
        object.type = value
        return self
    }
}
