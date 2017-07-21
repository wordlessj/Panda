//
//  UIAttachmentBehavior.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIAttachmentBehavior {
    @discardableResult
    public func anchorPoint(_ value: CGPoint) -> PandaChain {
        object.anchorPoint = value
        return self
    }

    @discardableResult
    public func length(_ value: CGFloat) -> PandaChain {
        object.length = value
        return self
    }

    @discardableResult
    public func damping(_ value: CGFloat) -> PandaChain {
        object.damping = value
        return self
    }

    @discardableResult
    public func frequency(_ value: CGFloat) -> PandaChain {
        object.frequency = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func frictionTorque(_ value: CGFloat) -> PandaChain {
        object.frictionTorque = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func attachmentRange(_ value: UIFloatRange) -> PandaChain {
        object.attachmentRange = value
        return self
    }
}
