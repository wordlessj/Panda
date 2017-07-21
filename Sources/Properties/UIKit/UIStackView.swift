//
//  UIStackView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 9.0, *)
extension PandaChain where Object: UIStackView {
    @discardableResult
    public func axis(_ value: UILayoutConstraintAxis) -> PandaChain {
        object.axis = value
        return self
    }

    @discardableResult
    public func distribution(_ value: UIStackViewDistribution) -> PandaChain {
        object.distribution = value
        return self
    }

    @discardableResult
    public func alignment(_ value: UIStackViewAlignment) -> PandaChain {
        object.alignment = value
        return self
    }

    @discardableResult
    public func spacing(_ value: CGFloat) -> PandaChain {
        object.spacing = value
        return self
    }

    @discardableResult
    public func isBaselineRelativeArrangement(_ value: Bool) -> PandaChain {
        object.isBaselineRelativeArrangement = value
        return self
    }

    @discardableResult
    public func isLayoutMarginsRelativeArrangement(_ value: Bool) -> PandaChain {
        object.isLayoutMarginsRelativeArrangement = value
        return self
    }
}
