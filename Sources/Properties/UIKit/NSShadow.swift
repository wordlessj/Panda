//
//  NSShadow.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: NSShadow {
    /// `shadowOffset`
    @discardableResult
    public func offset(_ value: CGSize) -> PandaChain {
        object.shadowOffset = value
        return self
    }

    @available(*, deprecated, renamed: "offset()")
    @discardableResult
    public func shadowOffset(_ value: CGSize) -> PandaChain {
        object.shadowOffset = value
        return self
    }

    /// `shadowBlurRadius`
    @discardableResult
    public func blurRadius(_ value: CGFloat) -> PandaChain {
        object.shadowBlurRadius = value
        return self
    }

    @available(*, deprecated, renamed: "blurRadius()")
    @discardableResult
    public func shadowBlurRadius(_ value: CGFloat) -> PandaChain {
        object.shadowBlurRadius = value
        return self
    }

    /// `shadowColor`
    @discardableResult
    public func color(_ value: Any?) -> PandaChain {
        object.shadowColor = value
        return self
    }

    @available(*, deprecated, renamed: "color()")
    @discardableResult
    public func shadowColor(_ value: Any?) -> PandaChain {
        object.shadowColor = value
        return self
    }
}
