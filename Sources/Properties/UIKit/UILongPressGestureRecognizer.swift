//
//  UILongPressGestureRecognizer.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UILongPressGestureRecognizer {
    @discardableResult
    public func numberOfTapsRequired(_ value: Int) -> PandaChain {
        object.numberOfTapsRequired = value
        return self
    }

    @discardableResult
    public func numberOfTouchesRequired(_ value: Int) -> PandaChain {
        object.numberOfTouchesRequired = value
        return self
    }

    @discardableResult
    public func minimumPressDuration(_ value: TimeInterval) -> PandaChain {
        object.minimumPressDuration = value
        return self
    }

    @discardableResult
    public func allowableMovement(_ value: CGFloat) -> PandaChain {
        object.allowableMovement = value
        return self
    }
}
