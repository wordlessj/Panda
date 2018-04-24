//
//  UIStackView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UIStackView {
    @discardableResult
    public func axis(_ value: UILayoutConstraintAxis) -> Self {
        return addAttributes(key: "axis", value: value) {
            $0.axis = value
        }
    }

    @discardableResult
    public func distribution(_ value: UIStackViewDistribution) -> Self {
        return addAttributes(key: "distribution", value: value) {
            $0.distribution = value
        }
    }

    @discardableResult
    public func alignment(_ value: UIStackViewAlignment) -> Self {
        return addAttributes(key: "alignment", value: value) {
            $0.alignment = value
        }
    }

    @discardableResult
    public func spacing(_ value: CGFloat) -> Self {
        return addAttributes(key: "spacing", value: value) {
            $0.spacing = value
        }
    }

    @discardableResult
    public func baselineRelativeArrangement(_ value: Bool) -> Self {
        return addAttributes(key: "isBaselineRelativeArrangement", value: value) {
            $0.isBaselineRelativeArrangement = value
        }
    }

    @discardableResult
    public func layoutMarginsRelativeArrangement(_ value: Bool) -> Self {
        return addAttributes(key: "isLayoutMarginsRelativeArrangement", value: value) {
            $0.isLayoutMarginsRelativeArrangement = value
        }
    }
}
