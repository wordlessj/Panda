//
//  UIAccessibilityContentSizeCategoryImageAdjusting.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 11.0, *)
extension PandaChain where Object: UIAccessibilityContentSizeCategoryImageAdjusting {
    @discardableResult
    public func adjustsImageSizeForAccessibilityContentSizeCategory(_ value: Bool) -> PandaChain {
        object.adjustsImageSizeForAccessibilityContentSizeCategory = value
        return self
    }
}
