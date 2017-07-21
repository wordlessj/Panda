//
//  UIRotationGestureRecognizer.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIRotationGestureRecognizer {
    @discardableResult
    public func rotation(_ value: CGFloat) -> PandaChain {
        object.rotation = value
        return self
    }
}
