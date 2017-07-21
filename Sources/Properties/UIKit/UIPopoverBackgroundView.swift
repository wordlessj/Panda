//
//  UIPopoverBackgroundView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIPopoverBackgroundView {
    @discardableResult
    public func arrowOffset(_ value: CGFloat) -> PandaChain {
        object.arrowOffset = value
        return self
    }

    @discardableResult
    public func arrowDirection(_ value: UIPopoverArrowDirection) -> PandaChain {
        object.arrowDirection = value
        return self
    }
}
