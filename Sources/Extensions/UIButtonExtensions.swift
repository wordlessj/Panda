//
//  UIButtonExtensions.swift
//  Panda
//
//  Created by Javier on 11/2/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import UIKit

extension UIButton {
    @discardableResult
    public func font(_ value: UIFont?) -> Self {
        titleLabel?.font = value
        return self
    }
}
