//
//  UICollectionViewCell.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UICollectionViewCell {
    @discardableResult
    public func selected(_ value: Bool) -> Self {
        return addAttributes(key: "isSelected", value: value) {
            $0.isSelected = value
        }
    }

    @discardableResult
    public func highlighted(_ value: Bool) -> Self {
        return addAttributes(key: "isHighlighted", value: value) {
            $0.isHighlighted = value
        }
    }

    /// `backgroundView`
    @discardableResult
    public func background(_ value: UIView?) -> Self {
        return addAttributes(key: "backgroundView", value: value) {
            $0.backgroundView = value
        }
    }

    @available(*, deprecated, renamed: "background()")
    @discardableResult
    public func backgroundView(_ value: UIView?) -> Self {
        return addAttributes(key: "backgroundView", value: value) {
            $0.backgroundView = value
        }
    }

    /// `selectedBackgroundView`
    @discardableResult
    public func selectedBackground(_ value: UIView?) -> Self {
        return addAttributes(key: "selectedBackgroundView", value: value) {
            $0.selectedBackgroundView = value
        }
    }

    @available(*, deprecated, renamed: "selectedBackground()")
    @discardableResult
    public func selectedBackgroundView(_ value: UIView?) -> Self {
        return addAttributes(key: "selectedBackgroundView", value: value) {
            $0.selectedBackgroundView = value
        }
    }
}
