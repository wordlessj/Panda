//
//  NSShadow.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: NSShadow {
    @discardableResult
    public func shadowOffset(_ value: CGSize) -> PandaChain {
        object.shadowOffset = value
        return self
    }

    @discardableResult
    public func shadowBlurRadius(_ value: CGFloat) -> PandaChain {
        object.shadowBlurRadius = value
        return self
    }

    @discardableResult
    public func shadowColor(_ value: Any?) -> PandaChain {
        object.shadowColor = value
        return self
    }
}
