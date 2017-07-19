//
//  CGContextExtensions.swift
//  Panda
//
//  Created by Javier on 9/9/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import CoreGraphics

extension CGContext {
    public func flipHorizontally(width: CGFloat) {
        translateBy(x: width, y: 0)
        scaleBy(x: -1, y: 1)
    }

    public func flipVertically(height: CGFloat) {
        translateBy(x: 0, y: height)
        scaleBy(x: 1, y: -1)
    }
}
