//
//  UIEdgeInsetsExtensions.swift
//  Panda
//
//  Created by Javier on 3/11/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import UIKit

extension UIEdgeInsets {
    public var horizontal: CGFloat { return left + right }
    public var vertical: CGFloat { return top + bottom }

    public init(horizontal: CGFloat, vertical: CGFloat) {
        self.init(top: vertical, left: horizontal, bottom: vertical, right: horizontal)
    }

    public init(all: CGFloat) {
        self.init(top: all, left: all, bottom: all, right: all)
    }

    public func inset(_ rect: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(rect, self)
    }
}
