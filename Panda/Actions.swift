//
//  Actions.swift
//  Panda
//
//  Created by Javier on 11/1/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import UIKit

private class ActionBox {
    static let triggerSelector = #selector(trigger)

    let action: () -> ()

    init(action: @escaping () -> ()) {
        self.action = action
    }

    @objc func trigger() {
        action()
    }
}

extension UIControlEvents: Hashable {
    public var hashValue: Int { return Int(rawValue) }
}

private var actionBoxKey: UInt8 = 0

extension UIControl {
    private var actionBoxes: [UIControlEvents: ActionBox] {
        get { return objc_getAssociatedObject(self, &actionBoxKey) as? [UIControlEvents: ActionBox] ?? [:] }
        set { objc_setAssociatedObject(self, &actionBoxKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC) }
    }

    @discardableResult
    public func action(events: UIControlEvents = .touchUpInside, action: (() -> ())?) -> Self {
        if let box = actionBoxes[events] {
            removeTarget(box, action: ActionBox.triggerSelector, for: events)
            actionBoxes[events] = nil
        }

        if let action = action {
            let box = ActionBox(action: action)
            addTarget(box, action: ActionBox.triggerSelector, for: events)
            actionBoxes[events] = box
        }

        return self
    }
}

private class ObjectActionBox {
    static let triggerSelector = #selector(trigger)

    unowned let object: AnyObject
    let action: (AnyObject) -> ()

    init(object: AnyObject, action: @escaping (AnyObject) -> ()) {
        self.object = object
        self.action = action
    }

    @objc func trigger() {
        action(object)
    }
}

public protocol GestureRecognizer: class {}

extension GestureRecognizer where Self: UIGestureRecognizer {
    private var actionBox: ObjectActionBox? {
        get { return objc_getAssociatedObject(self, &actionBoxKey) as? ObjectActionBox }
        set { objc_setAssociatedObject(self, &actionBoxKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC) }
    }

    @discardableResult
    public func action(_ action: ((Self) -> ())?) -> Self {
        if let box = actionBox {
            removeTarget(box, action: ObjectActionBox.triggerSelector)
            actionBox = nil
        }

        if let action = action {
            let box = ObjectActionBox(object: self, action: action as! (AnyObject) -> ())
            addTarget(box, action: ObjectActionBox.triggerSelector)
            actionBox = box
        }

        return self
    }
}

extension UIGestureRecognizer: GestureRecognizer {}
