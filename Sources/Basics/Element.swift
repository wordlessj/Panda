//
//  Element.swift
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

public struct OldElement {
    var type: Any.Type
    var attributes: [String: Int]
    var children: [String: [OldElement]]
    var key: Int?
}

public protocol ElementProtocol {
    func apply(to object: Any, old: OldElement?)
    func toOld() -> OldElement
    func isSimilar(to old: OldElement) -> Bool
    func createObject() -> Any
}

public class Element<Object: ElementObject>: ElementProtocol {
    private var type = Object.self
    private var attributes = [String: (hash: Int, apply: (Object) -> ())]()
    private var children = [String: Children<Object>]()
    private var key: Int?

    public func apply(to object: Any, old: OldElement?) {
        let object = object as! Object
        let oldAttributes = old?.attributes ?? [:]

        for (key, value) in attributes {
            guard oldAttributes[key] == nil ||
                (oldAttributes[key] != nil && oldAttributes[key] != value.hash)
                else { continue }
            value.apply(object)
        }

        for (key, value) in children {
            value.apply(to: object, oldElements: old?.children[key] ?? [])
        }
    }

    public func toOld() -> OldElement {
        return OldElement(
            type: type,
            attributes: attributes.mapValues { $0.hash },
            children: children.mapValues { $0.toOld() },
            key: key
        )
    }

    public func isSimilar(to old: OldElement) -> Bool {
        guard type == old.type else { return false }

        if key != nil || old.key != nil {
            return key == old.key
        } else {
            return attributes.keysEqual(to: old.attributes) &&
                children.keysEqual(to: old.children)
        }
    }

    public func createObject() -> Any {
        return Object()
    }

    func addAttributes<Value: Hashable>(key: String, value: Value, apply: @escaping (Object) -> ()) -> Self {
        attributes[key] = (value.hashValue, apply)
        return self
    }

    func addAttributes<Value: Hashable>(key: String, value: Value?, apply: @escaping (Object) -> ()) -> Self {
        attributes[key] = (value?.hashValue ?? 0, apply)
        return self
    }

    func addChangingAttributes(key: String, apply: @escaping (Object) -> ()) -> Self {
        attributes[key] = (Int(arc4random()), apply)
        return self
    }

    func addChildren(key: String, children: Children<Object>) -> Self {
        self.children[key] = children
        return self
    }
}

extension Element {
    @discardableResult
    public func nop() -> Self {
        return self
    }

    @discardableResult
    public func key<Value: Hashable>(_ value: Value) -> Self {
        key = value.hashValue
        return self
    }

    @discardableResult
    public func ref(_ value: UnsafeMutablePointer<Object>) -> Self {
        return addChangingAttributes(key: "ref") {
            guard value.pointee !== $0 else { return }
            value.pointee = $0
        }
    }

    @discardableResult
    public func set<Value: Hashable>(_ path: ReferenceWritableKeyPath<Object, Value>, _ value: Value) -> Self {
        return addAttributes(key: "\(path.hashValue)", value: value) {
            $0[keyPath: path] = value
        }
    }

    @discardableResult
    public func set<Value: Hashable>(_ path: ReferenceWritableKeyPath<Object, Value?>, _ value: Value?) -> Self {
        return addAttributes(key: "\(path.hashValue)", value: value) {
            $0[keyPath: path] = value
        }
    }
}

extension Element where Object: Component {
    @discardableResult
    public func props<Value: Hashable>(_ path: WritableKeyPath<Object.Props, Value>, _ value: Value) -> Self {
        let fullPath = (\Object.props).appending(path: path)
        return set(fullPath, value)
    }

    @discardableResult
    public func props<Value: Hashable>(_ path: WritableKeyPath<Object.Props, Value?>, _ value: Value?) -> Self {
        let fullPath = (\Object.props).appending(path: path)
        return set(fullPath, value)
    }
}
