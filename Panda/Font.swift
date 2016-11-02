//
//  Font.swift
//  Panda
//
//  Created by Javier on 11/2/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import UIKit

public protocol FontContainer {
    func font(_ value: UIFont?) -> Self
}

extension FontContainer {
    @discardableResult
    public func font(style: UIFontTextStyle) -> Self {
        return font(.preferredFont(forTextStyle: style))
    }

    @discardableResult
    public func font(size: CGFloat) -> Self {
        return font(.systemFont(ofSize: size))
    }

    @available(iOS 8.2, *)
    @discardableResult
    public func font(size: CGFloat, weight: UIFont.Weight) -> Self {
        return font(.systemFont(ofSize: size, weight: weight))
    }

    @discardableResult
    public func font(boldSize size: CGFloat) -> Self {
        return font(.boldSystemFont(ofSize: size))
    }

    @discardableResult
    public func font(italicSize size: CGFloat) -> Self {
        return font(.italicSystemFont(ofSize: size))
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func font(monospacedDigitSize size: CGFloat, weight: UIFont.Weight) -> Self {
        return font(.monospacedDigitSystemFont(ofSize: size, weight: weight))
    }
}

extension UILabel: FontContainer {}
extension UITextField: FontContainer {}
extension UITextView: FontContainer {}
