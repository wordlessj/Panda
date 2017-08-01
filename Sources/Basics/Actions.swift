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
    static let selector = #selector(trigger(_:))

    private let action: (Any) -> ()

    init<Object>(action: @escaping (Object) -> ()) {
        self.action = { action($0 as! Object) }
    }

    @objc func trigger(_ object: Any) {
        action(object)
    }
}

public protocol ActionBoxContainer: class {}

private var actionBoxKey: UInt8 = 0

extension ActionBoxContainer {
    fileprivate var actionBox: ActionBox? {
        get { return objc_getAssociatedObject(self, &actionBoxKey) as? ActionBox }
        set { objc_setAssociatedObject(self, &actionBoxKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC) }
    }
}

// MARK: CADisplayLink

extension CADisplayLink: ActionBoxContainer {}

extension CADisplayLink {
    public convenience init(action: @escaping (CADisplayLink) -> ()) {
        let box = ActionBox(action: action)
        self.init(target: box, selector: ActionBox.selector)
    }
}

// MARK: UIAccessibilityCustomAction

extension UIAccessibilityCustomAction: ActionBoxContainer {}

extension PandaChain where Object: UIAccessibilityCustomAction {
    /// Set `action`.
    ///
    /// - parameter action: If `nil`, the action set before will be removed.
    @discardableResult
    public func action(_ action: ((Object) -> ())?) -> PandaChain {
        let box = action.map { ActionBox(action: $0) }
        object.target = box
        object.selector = ActionBox.selector
        object.actionBox = box
        return self
    }
}

// MARK: UIBarButtonItem

extension UIBarButtonItem: ActionBoxContainer {}

extension PandaChain where Object: UIBarButtonItem {
    /// Set `action`.
    ///
    /// - parameter action: If `nil`, the action set before will be removed.
    @discardableResult
    public func action(_ action: ((Object) -> ())?) -> PandaChain {
        let box = action.map { ActionBox(action: $0) }
        object.target = box
        object.action = ActionBox.selector
        object.actionBox = box
        return self
    }
}

// MARK: UIControl

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
    public func action(for events: UIControlEvents = .touchUpInside, action: ((Object) -> ())?) -> PandaChain {
        if let box = object.actionBoxes[events.rawValue] {
            object.removeTarget(box, action: ActionBox.selector, for: events)
            object.actionBoxes[events.rawValue] = nil
        }

        if let action = action {
            let box = ActionBox(action: action)
            object.addTarget(box, action: ActionBox.selector, for: events)
            object.actionBoxes[events.rawValue] = box
        }

        return self
    }
}

// MARK: UIGestureRecognizer

extension UIGestureRecognizer: ActionBoxContainer {}

extension PandaChain where Object: UIGestureRecognizer {
    /// Set `action`.
    ///
    /// - parameter action: If `nil`, the action set before will be removed.
    @discardableResult
    public func action(_ action: ((Object) -> ())?) -> PandaChain {
        if let box = object.actionBox {
            object.removeTarget(box, action: ActionBox.selector)
            object.actionBox = nil
        }

        if let action = action {
            let box = ActionBox(action: action)
            object.addTarget(box, action: ActionBox.selector)
            object.actionBox = box
        }

        return self
    }
}
