//
//  UIPopoverBackgroundView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UIPopoverBackgroundView {
    @discardableResult
    public func arrowOffset(_ value: CGFloat) -> Self {
        return addAttributes(key: "arrowOffset", value: value) {
            $0.arrowOffset = value
        }
    }

    @discardableResult
    public func arrowDirection(_ value: UIPopoverArrowDirection) -> Self {
        return addAttributes(key: "arrowDirection", value: value) {
            $0.arrowDirection = value
        }
    }
}
