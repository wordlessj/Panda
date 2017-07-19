//
//  UIResponder.swift
//  Panda
//
//  Created by Javier on 11/1/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import UIKit

extension UIResponder {
    @discardableResult
    public func userActivity(_ value: NSUserActivity?) -> Self {
        userActivity = value
        return self
    }
}
