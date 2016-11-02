//
//  UIStackViewExtensions.swift
//  Panda
//
//  Created by Javier on 11/2/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import UIKit

@available(iOS 9.0, *)
extension UIStackView {
    @discardableResult
    public func addArrangedSubviews(_ views: UIView...) -> Self {
        return addArrangedSubviews(views)
    }

    @discardableResult
    public func addArrangedSubviews(_ views: [UIView]) -> Self {
        views.forEach { addArrangedSubview($0) }
        return self
    }

    @discardableResult
    public func removeArrangedSubviews(_ views: UIView...) -> Self {
        return removeArrangedSubviews(views)
    }

    @discardableResult
    public func removeArrangedSubviews(_ views: [UIView]) -> Self {
        views.forEach { removeArrangedSubview($0) }
        return self
    }
}
