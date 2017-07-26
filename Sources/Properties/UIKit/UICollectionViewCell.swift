//
//  UICollectionViewCell.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UICollectionViewCell {
    @discardableResult
    public func selected(_ value: Bool) -> PandaChain {
        object.isSelected = value
        return self
    }

    @discardableResult
    public func highlighted(_ value: Bool) -> PandaChain {
        object.isHighlighted = value
        return self
    }

    /// `backgroundView`
    @discardableResult
    public func background(_ value: UIView?) -> PandaChain {
        object.backgroundView = value
        return self
    }

    @available(*, deprecated, renamed: "background()")
    @discardableResult
    public func backgroundView(_ value: UIView?) -> PandaChain {
        object.backgroundView = value
        return self
    }

    /// `selectedBackgroundView`
    @discardableResult
    public func selectedBackground(_ value: UIView?) -> PandaChain {
        object.selectedBackgroundView = value
        return self
    }

    @available(*, deprecated, renamed: "selectedBackground()")
    @discardableResult
    public func selectedBackgroundView(_ value: UIView?) -> PandaChain {
        object.selectedBackgroundView = value
        return self
    }
}
