//
//  UISwipeGestureRecognizer.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UISwipeGestureRecognizer {
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

    @discardableResult
    public func direction(_ value: UISwipeGestureRecognizerDirection) -> PandaChain {
        object.direction = value
        return self
    }
}
