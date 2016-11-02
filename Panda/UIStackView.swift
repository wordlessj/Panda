//
//  UIStackView.swift
//  Panda
//
//  Created by Javier on 11/2/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import UIKit

@available(iOS 9.0, *)
extension UIStackView {
    @discardableResult
    public func alignment(_ value: UIStackViewAlignment) -> Self {
        alignment = value
        return self
    }

    @discardableResult
    public func axis(_ value: UILayoutConstraintAxis) -> Self {
        axis = value
        return self
    }

    @discardableResult
    public func isBaselineRelativeArrangement(_ value: Bool) -> Self {
        isBaselineRelativeArrangement = value
        return self
    }

    @discardableResult
    public func distribution(_ value: UIStackViewDistribution) -> Self {
        distribution = value
        return self
    }

    @discardableResult
    public func isLayoutMarginsRelativeArrangement(_ value: Bool) -> Self {
        isLayoutMarginsRelativeArrangement = value
        return self
    }

    @discardableResult
    public func spacing(_ value: CGFloat) -> Self {
        spacing = value
        return self
    }
}
