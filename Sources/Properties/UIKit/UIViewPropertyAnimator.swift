//
//  UIViewPropertyAnimator.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 10.0, *)
extension PandaChain where Object: UIViewPropertyAnimator {
    @discardableResult
    public func isUserInteractionEnabled(_ value: Bool) -> PandaChain {
        object.isUserInteractionEnabled = value
        return self
    }

    @discardableResult
    public func isManualHitTestingEnabled(_ value: Bool) -> PandaChain {
        object.isManualHitTestingEnabled = value
        return self
    }

    @discardableResult
    public func isInterruptible(_ value: Bool) -> PandaChain {
        object.isInterruptible = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func scrubsLinearly(_ value: Bool) -> PandaChain {
        object.scrubsLinearly = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func pausesOnCompletion(_ value: Bool) -> PandaChain {
        object.pausesOnCompletion = value
        return self
    }
}
