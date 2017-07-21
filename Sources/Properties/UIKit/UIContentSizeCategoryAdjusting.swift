//
//  UIContentSizeCategoryAdjusting.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 10.0, *)
extension PandaChain where Object: UIContentSizeCategoryAdjusting {
    @discardableResult
    public func adjustsFontForContentSizeCategory(_ value: Bool) -> PandaChain {
        object.adjustsFontForContentSizeCategory = value
        return self
    }
}
