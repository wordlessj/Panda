//
//  UIGraphicsImageRendererFormat.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 10.0, *)
extension PandaChain where Object: UIGraphicsImageRendererFormat {
    @discardableResult
    public func scale(_ value: CGFloat) -> PandaChain {
        object.scale = value
        return self
    }

    @discardableResult
    public func opaque(_ value: Bool) -> PandaChain {
        object.opaque = value
        return self
    }

    @discardableResult
    public func prefersExtendedRange(_ value: Bool) -> PandaChain {
        object.prefersExtendedRange = value
        return self
    }
}
