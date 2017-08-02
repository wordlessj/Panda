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

    /// `alignment`
    @discardableResult
    public func align(_ value: UIStackViewAlignment) -> PandaChain {
        object.alignment = value
        return self
    }

    @available(*, deprecated, renamed: "align()")
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

    /// `isBaselineRelativeArrangement`
    @discardableResult
    public func baselineArrange(_ value: Bool) -> PandaChain {
        object.isBaselineRelativeArrangement = value
        return self
    }

    @available(*, deprecated, renamed: "baselineArrange()")
    @discardableResult
    public func baselineRelativeArrangement(_ value: Bool) -> PandaChain {
        object.isBaselineRelativeArrangement = value
        return self
    }

    /// `isLayoutMarginsRelativeArrangement`
    @discardableResult
    public func marginsArrange(_ value: Bool) -> PandaChain {
        object.isLayoutMarginsRelativeArrangement = value
        return self
    }

    @available(*, deprecated, renamed: "marginsArrange()")
    @discardableResult
    public func layoutMarginsRelativeArrangement(_ value: Bool) -> PandaChain {
        object.isLayoutMarginsRelativeArrangement = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func customSpacing(_ spacing: CGFloat, after arrangedSubview: UIView) -> PandaChain {
        object.setCustomSpacing(spacing, after: arrangedSubview)
        return self
    }
}
