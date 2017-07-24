//
//  Actions.swift
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

import UIKit

private class ActionBox {
    static let triggerSelector = #selector(trigger)

    private let action: () -> ()

    init(action: @escaping () -> ()) {
        self.action = action
    }

    @objc func trigger() {
        action()
    }
}

private var actionBoxKey: UInt8 = 0

extension UIControl {
    fileprivate var actionBoxes: [UInt: ActionBox] {
        get { return objc_getAssociatedObject(self, &actionBoxKey) as? [UInt: ActionBox] ?? [:] }
        set { objc_setAssociatedObject(self, &actionBoxKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC) }
    }
}

extension PandaChain where Object: UIControl {
    /// Associates `action` for `events`.
    ///
    /// - parameters:
    ///     - events: Defaults to `touchUpInside`.
    ///     - action: If `nil`, the action associated with `events` will be removed.
    @discardableResult
    public func action(for events: UIControlEvents = .touchUpInside, action: (() -> ())?) -> PandaChain {
        if let box = object.actionBoxes[events.rawValue] {
            object.removeTarget(box, action: ActionBox.triggerSelector, for: events)
            object.actionBoxes[events.rawValue] = nil
        }

        if let action = action {
            let box = ActionBox(action: action)
            object.addTarget(box, action: ActionBox.triggerSelector, for: events)
            object.actionBoxes[events.rawValue] = box
        }

        return self
    }
}

private class ObjectActionBox<Object: AnyObject> {
    private unowned let object: Object
    private let action: (Object) -> ()

    init(object: Object, action: @escaping (Object) -> ()) {
        self.object = object
        self.action = action
    }

    @objc func trigger() {
        action(object)
    }
}

public protocol GestureRecognizer: class {}

extension GestureRecognizer where Self: UIGestureRecognizer {
    fileprivate var actionBox: ObjectActionBox<Self>? {
        get { return objc_getAssociatedObject(self, &actionBoxKey) as? ObjectActionBox<Self> }
        set { objc_setAssociatedObject(self, &actionBoxKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC) }
    }
}

extension UIGestureRecognizer: GestureRecognizer {}

extension PandaChain where Object: UIGestureRecognizer {
    /// Set `action`.
    ///
    /// - parameter action: If `nil`, the action set before will be removed.
    @discardableResult
    public func action(_ action: ((Object) -> ())?) -> PandaChain {
        let selector = #selector(ObjectActionBox<Object>.trigger)

        if let box = object.actionBox {
            object.removeTarget(box, action: selector)
            object.actionBox = nil
        }

        if let action = action {
            let box = ObjectActionBox(object: object, action: action)
            object.addTarget(box, action: selector)
            object.actionBox = box
        }

        return self
    }
}
