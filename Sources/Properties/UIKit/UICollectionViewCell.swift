//
//  UICollectionViewCell.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UICollectionViewCell {
    @discardableResult
    public func isSelected(_ value: Bool) -> PandaChain {
        object.isSelected = value
        return self
    }

    @discardableResult
    public func isHighlighted(_ value: Bool) -> PandaChain {
        object.isHighlighted = value
        return self
    }

    @discardableResult
    public func backgroundView(_ value: UIViewConvertible?) -> PandaChain {
        object.backgroundView = unbox(value)
        return self
    }

    @discardableResult
    public func selectedBackgroundView(_ value: UIViewConvertible?) -> PandaChain {
        object.selectedBackgroundView = unbox(value)
        return self
    }
}
