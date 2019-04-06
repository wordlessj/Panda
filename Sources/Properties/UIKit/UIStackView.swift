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
    public func axis(_ value: NSLayoutConstraint.Axis) -> PandaChain {
        object.axis = value
        return self
    }

    @discardableResult
    public func distribution(_ value: UIStackView.Distribution) -> PandaChain {
        object.distribution = value
        return self
    }

    @discardableResult
    public func alignment(_ value: UIStackView.Alignment) -> PandaChain {
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

    @available(iOS 11.0, *)
    @discardableResult
    public func customSpacing(_ spacing: CGFloat, after arrangedSubview: UIView) -> PandaChain {
        object.setCustomSpacing(spacing, after: arrangedSubview)
        return self
    }
}
