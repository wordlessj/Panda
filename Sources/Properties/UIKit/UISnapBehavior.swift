//
//  UISnapBehavior.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UISnapBehavior {
    @available(iOS 9.0, *)
    @discardableResult
    public func snapPoint(_ value: CGPoint) -> PandaChain {
        object.snapPoint = value
        return self
    }

    @discardableResult
    public func damping(_ value: CGFloat) -> PandaChain {
        object.damping = value
        return self
    }
}
