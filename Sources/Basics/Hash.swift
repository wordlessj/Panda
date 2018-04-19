//
//  Hash.swift
//  Panda
//
//  Copyright (c) 2018 Javier Zhang (https://wordlessj.github.io/)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

extension Array: Hashable where Element: Hashable {
    public var hashValue: Int {
        // FNV-1a algorithm
        let offset: UInt = 14695981039346656037
        let prime: UInt = 1099511628211
        let hash = reduce(offset) {
            $0 ^ UInt($1.hashValue) &* prime
        }
        return Int(truncatingIfNeeded: hash)
    }
}

public protocol ArrayConvertible: Hashable {
    associatedtype Element: Hashable
    func toArray() -> [Element]
}

extension ArrayConvertible {
    public var hashValue: Int { return toArray().hashValue }
}

@available(iOS 11.0, *)
extension NSDirectionalEdgeInsets: ArrayConvertible {
    public static func ==(lhs: NSDirectionalEdgeInsets, rhs: NSDirectionalEdgeInsets) -> Bool {
        return lhs.toArray() == rhs.toArray()
    }

    public func toArray() -> [CGFloat] {
        return [top, leading, bottom, trailing]
    }
}

extension CATransform3D: ArrayConvertible {
    public static func ==(lhs: CATransform3D, rhs: CATransform3D) -> Bool {
        return lhs.toArray() == rhs.toArray()
    }

    public func toArray() -> [CGFloat] {
        return [
            m11, m12, m13, m14,
            m21, m22, m23, m24,
            m31, m32, m33, m34,
            m41, m42, m43, m44,
        ]
    }
}

extension CGPoint: ArrayConvertible {
    public func toArray() -> [CGFloat] {
        return [x, y]
    }
}

extension CGSize: ArrayConvertible {
    public func toArray() -> [CGFloat] {
        return [width, height]
    }
}

extension CGRect: ArrayConvertible {
    public func toArray() -> [CGFloat] {
        return [origin.x, origin.y, size.width, size.height]
    }
}

extension CGAffineTransform: ArrayConvertible {
    public func toArray() -> [CGFloat] {
        return [a, b, c, d, tx, ty]
    }
}

extension UIEdgeInsets: ArrayConvertible {
    public func toArray() -> [CGFloat] {
        return [top, left, bottom, right]
    }
}

extension UIOffset: ArrayConvertible {
    public func toArray() -> [CGFloat] {
        return [horizontal, vertical]
    }
}
