//
//  Do.swift
//  Panda
//
//  Created by Javier on 11/2/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import Foundation

public protocol Doable {}

extension Doable {
    @discardableResult
    public func `do`(_ action: (Self) -> ()) -> Self {
        action(self)
        return self
    }
}

extension NSObject: Doable {}
