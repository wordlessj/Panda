//
//  WeakSelf.swift
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

public protocol SelfWeakable: AnyObject {}

extension SelfWeakable {
    public func weakSelf<Result>(
        _ action: @escaping (Self) -> () -> Result
    ) -> () -> Result {
        return { [unowned self] in
            action(self)()
        }
    }

    public func weakSelf<A, Result>(
        _ action: @escaping (Self) -> (A) -> Result
    ) -> (A) -> Result {
        return { [unowned self] a in
            action(self)(a)
        }
    }

    public func weakSelf<A, B, Result>(
        _ action: @escaping (Self) -> (A, B) -> Result
    ) -> (A, B) -> Result {
        return { [unowned self] a, b in
            action(self)(a, b)
        }
    }

    public func weakSelf<A, B, C, Result>(
        _ action: @escaping (Self) -> (A, B, C) -> Result
    ) -> (A, B, C) -> Result {
        return { [unowned self] a, b, c in
            action(self)(a, b, c)
        }
    }

    public func weakSelf<A, B, C, D, Result>(
        _ action: @escaping (Self) -> (A, B, C, D) -> Result
    ) -> (A, B, C, D) -> Result {
        return { [unowned self] a, b, c, d in
            action(self)(a, b, c, d)
        }
    }

    public func weakSelf<A, B, C, D, E, Result>(
        _ action: @escaping (Self) -> (A, B, C, D, E) -> Result
    ) -> (A, B, C, D, E) -> Result {
        return { [unowned self] a, b, c, d, e in
            action(self)(a, b, c, d, e)
        }
    }
}

extension NSObject: SelfWeakable {}
