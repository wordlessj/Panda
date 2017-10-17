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

func unbox<Item, Target>(_ item: Item) -> Target {
    if let chain = item as? PandaChainProtocol {
        return chain.anyObject as! Target
    } else {
        return item as! Target
    }
}

func unbox<Item, Target>(_ item: Item?) -> Target? {
    return item.map { unbox($0) }
}

func unboxArray<Target>(_ items: [Any]) -> [Target] {
    return items.map { unbox($0) }
}

func unboxArray<Target>(_ items: [Any]?) -> [Target]? {
    return items.map { unboxArray($0) }
}

public protocol PandaChainProtocol {
    var anyObject: Any { get }
}

public class PandaChain<Object> {
    public let object: Object

    init(object: Object) {
        self.object = object
    }
}

extension PandaChain: PandaChainProtocol {
    public var anyObject: Any { return object }
}

extension PandaChain {
    /// Set property value with key path.
    ///
    /// - parameters:
    ///     - keyPath: Key path of the property, use inferred type expression like `\.property`.
    ///     - value: New value.
    @discardableResult
    public func set<Value>(_ keyPath: ReferenceWritableKeyPath<Object, Value>, _ value: Value) -> PandaChain {
        object[keyPath: keyPath] = value
        return self
    }

    /// Do something on the object.
    ///
    /// - parameter action: Something to be done.
    @discardableResult
    public func `do`(_ action: (Object) -> ()) -> PandaChain {
        action(object)
        return self
    }
}

public protocol PandaChainable {}

extension PandaChainable {
    /// Panda extensions.
    public var pd: PandaChain<Self> {
        return PandaChain(object: self)
    }
}

extension NSObject: PandaChainable {}
