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

    /// `alignment`
    @discardableResult
    public func align(_ value: UIStackViewAlignment) -> Self {
        return addAttributes(key: "alignment", value: value) {
            $0.alignment = value
        }
    }

    @available(*, deprecated, renamed: "align()")
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

    /// `isBaselineRelativeArrangement`
    @discardableResult
    public func baselineArrange(_ value: Bool) -> Self {
        return addAttributes(key: "isBaselineRelativeArrangement", value: value) {
            $0.isBaselineRelativeArrangement = value
        }
    }

    @available(*, deprecated, renamed: "baselineArrange()")
    @discardableResult
    public func baselineRelativeArrangement(_ value: Bool) -> Self {
        return addAttributes(key: "isBaselineRelativeArrangement", value: value) {
            $0.isBaselineRelativeArrangement = value
        }
    }

    /// `isLayoutMarginsRelativeArrangement`
    @discardableResult
    public func marginsArrange(_ value: Bool) -> Self {
        return addAttributes(key: "isLayoutMarginsRelativeArrangement", value: value) {
            $0.isLayoutMarginsRelativeArrangement = value
        }
    }

    @available(*, deprecated, renamed: "marginsArrange()")
    @discardableResult
    public func layoutMarginsRelativeArrangement(_ value: Bool) -> Self {
        return addAttributes(key: "isLayoutMarginsRelativeArrangement", value: value) {
            $0.isLayoutMarginsRelativeArrangement = value
        }
    }
}
