//
//  PandaChain.swift
//  Panda
//
//  Copyright (c) 2017 Javier Zhang (https://wordlessj.github.io/)
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

public struct PandaChain<Object> {
    public var object: Object
}

extension PandaChain {
    /// Do something on the object.
    ///
    /// - parameter action: Something to be done.
    @discardableResult
    public func `do`(_ action: (Object) -> ()) -> PandaChain {
        action(object)
        return self
    }
}

struct ConfigStack {
    static var shared = ConfigStack()

    private var stack = [[Any]]()

    mutating func push() {
        stack.append([])
    }

    mutating func pop() -> [Any] {
        return stack.removeLast()
    }

    mutating func add(_ element: Any) {
        guard !stack.isEmpty else { return }
        stack[stack.count - 1].append(element)
    }
}

public protocol PandaChainable {}

extension PandaChainable {
    /// Panda extensions.
    public var pd: PandaChain<Self> {
        ConfigStack.shared.add(self)
        return PandaChain(object: self)
    }
}

extension NSObject: PandaChainable {}
