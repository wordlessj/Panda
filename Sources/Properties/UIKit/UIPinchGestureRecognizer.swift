//
//  UIPinchGestureRecognizer.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIPinchGestureRecognizer {
    @discardableResult
    public func scale(_ value: CGFloat) -> PandaChain {
        object.scale = value
        return self
    }
}
