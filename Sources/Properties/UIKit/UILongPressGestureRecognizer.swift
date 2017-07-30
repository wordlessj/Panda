//
//  UILongPressGestureRecognizer.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UILongPressGestureRecognizer {
    /// `numberOfTapsRequired`
    @discardableResult
    public func taps(_ value: Int) -> PandaChain {
        object.numberOfTapsRequired = value
        return self
    }

    @available(*, deprecated, renamed: "taps()")
    @discardableResult
    public func numberOfTapsRequired(_ value: Int) -> PandaChain {
        object.numberOfTapsRequired = value
        return self
    }

    /// `numberOfTouchesRequired`
    @discardableResult
    public func touches(_ value: Int) -> PandaChain {
        object.numberOfTouchesRequired = value
        return self
    }

    @available(*, deprecated, renamed: "touches()")
    @discardableResult
    public func numberOfTouchesRequired(_ value: Int) -> PandaChain {
        object.numberOfTouchesRequired = value
        return self
    }

    /// `minimumPressDuration`
    @discardableResult
    public func minDuration(_ value: CFTimeInterval) -> PandaChain {
        object.minimumPressDuration = value
        return self
    }

    @available(*, deprecated, renamed: "minDuration()")
    @discardableResult
    public func minimumPressDuration(_ value: CFTimeInterval) -> PandaChain {
        object.minimumPressDuration = value
        return self
    }

    @discardableResult
    public func allowableMovement(_ value: CGFloat) -> PandaChain {
        object.allowableMovement = value
        return self
    }
}
