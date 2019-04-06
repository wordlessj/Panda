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

    @available(iOS, introduced: 10.0, deprecated: 12.0)
    @discardableResult
    public func prefersExtendedRange(_ value: Bool) -> PandaChain {
        object.prefersExtendedRange = value
        return self
    }

    @available(iOS 12.0, *)
    @discardableResult
    public func preferredRange(_ value: UIGraphicsImageRendererFormat.Range) -> PandaChain {
        object.preferredRange = value
        return self
    }
}
