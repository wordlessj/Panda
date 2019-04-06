//
//  UISwipeGestureRecognizer.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UISwipeGestureRecognizer {
    @discardableResult
    public func numberOfTouchesRequired(_ value: Int) -> PandaChain {
        object.numberOfTouchesRequired = value
        return self
    }

    @discardableResult
    public func direction(_ value: UISwipeGestureRecognizer.Direction) -> PandaChain {
        object.direction = value
        return self
    }
}
