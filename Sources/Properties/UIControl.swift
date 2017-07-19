//
//  UIControl.swift
//  Panda
//
//  Created by Javier on 11/1/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import UIKit

extension UIControl {
    @discardableResult
    public func isEnabled(_ value: Bool) -> Self {
        isEnabled = value
        return self
    }

    @discardableResult
    public func isSelected(_ value: Bool) -> Self {
        isSelected = value
        return self
    }

    @discardableResult
    public func isHighlighted(_ value: Bool) -> Self {
        isHighlighted = value
        return self
    }

    @discardableResult
    public func contentVerticalAlignment(_ value: UIControlContentVerticalAlignment) -> Self {
        contentVerticalAlignment = value
        return self
    }

    @discardableResult
    public func contentHorizontalAlignment(_ value: UIControlContentHorizontalAlignment) -> Self {
        contentHorizontalAlignment = value
        return self
    }
}
