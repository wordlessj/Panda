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

private var actionBoxesKey: UInt8 = 0

public protocol SelfWeakable: AnyObject {}

extension SelfWeakable {
    public func weakSelf<Param>(_ action: @escaping (Self) -> (Param) -> ()) -> (Param) -> () {
        return { [weak self] param in
            guard let s = self else { return }
            action(s)(param)
        }
    }
}

extension NSObject: SelfWeakable {}

class ActionBox {
    static let selector = #selector(trigger(_:))

    private var action: ((Any) -> ())?

    func setAction<Object>(_ action: ((Object) -> ())?) {
        self.action = action.map { action in
            { action($0 as! Object) }
        }
    }

    @objc func trigger(_ object: Any) {
        action?(object)
    }
}

extension UIView {
    var actionBoxes: [String: ActionBox] {
        get { return associatedObject(key: &actionBoxesKey) ?? [:] }
        set { setAssociatedObject(key: &actionBoxesKey, value: newValue) }
    }
}

extension Element where Object: UIView {
    @discardableResult
    public func tap(_ value: ((UITapGestureRecognizer) -> ())?) -> Self {
        return gesture(key: "tapGesture", action: value)
    }

    @discardableResult
    public func doubleTap(_ value: ((UITapGestureRecognizer) -> ())?) -> Self {
        return gesture(key: "doubleTapGesture", action: value) { $0.numberOfTapsRequired = 2 }
    }

    @discardableResult
    public func pinch(_ value: ((UIPinchGestureRecognizer) -> ())?) -> Self {
        return gesture(key: "pinchGesture", action: value)
    }

    @discardableResult
    public func rotation(_ value: ((UIRotationGestureRecognizer) -> ())?) -> Self {
        return gesture(key: "rotationGesture", action: value)
    }

    @discardableResult
    public func swipe(_ value: ((UISwipeGestureRecognizer) -> ())?) -> Self {
        return gesture(key: "swipeGesture", action: value)
    }

    @discardableResult
    public func pan(_ value: ((UIPanGestureRecognizer) -> ())?) -> Self {
        return gesture(key: "panGesture", action: value)
    }

    @discardableResult
    public func screenEdgePan(_ value: ((UIScreenEdgePanGestureRecognizer) -> ())?) -> Self {
        return gesture(key: "screenEdgePanGesture", action: value)
    }

    @discardableResult
    public func longPress(_ value: ((UILongPressGestureRecognizer) -> ())?) -> Self {
        return gesture(key: "longPressGesture", action: value)
    }

    private func gesture<Gesture: UIGestureRecognizer>(
        key: String,
        action: ((Gesture) -> ())?,
        config: ((Gesture) -> ())? = nil
    ) -> Self {
        return targetAction(key: key, action: action) { view, box in
            let gesture = Gesture(target: box, action: ActionBox.selector)
            config?(gesture)
            view.addGestureRecognizer(gesture)
        }
    }

    func targetAction<T>(key: String, action: ((T) -> ())?, add: @escaping (Object, ActionBox) -> ()) -> Self {
        return addChangingAttributes(key: key) { view in
            if let box = view.actionBoxes[key] {
                box.setAction(action)
            } else {
                let box = ActionBox()
                box.setAction(action)
                view.actionBoxes[key] = box
                add(view, box)
            }
        }
    }
}

extension Element where Object: UIControl {
    @discardableResult
    public func touchDown(_ value: ((Object) -> ())?) -> Self {
        return events(key: "touchDown", action: value, events: .touchDown)
    }

    @discardableResult
    public func touchDownRepeat(_ value: ((Object) -> ())?) -> Self {
        return events(key: "touchDownRepeat", action: value, events: .touchDownRepeat)
    }

    @discardableResult
    public func touchDragInside(_ value: ((Object) -> ())?) -> Self {
        return events(key: "touchDragInside", action: value, events: .touchDragInside)
    }

    @discardableResult
    public func touchDragOutside(_ value: ((Object) -> ())?) -> Self {
        return events(key: "touchDragOutside", action: value, events: .touchDragOutside)
    }

    @discardableResult
    public func touchDragEnter(_ value: ((Object) -> ())?) -> Self {
        return events(key: "touchDragEnter", action: value, events: .touchDragEnter)
    }

    @discardableResult
    public func touchDragExit(_ value: ((Object) -> ())?) -> Self {
        return events(key: "touchDragExit", action: value, events: .touchDragExit)
    }

    @discardableResult
    public func touchUpInside(_ value: ((Object) -> ())?) -> Self {
        return events(key: "touchUpInside", action: value, events: .touchUpInside)
    }

    @discardableResult
    public func touchUpOutside(_ value: ((Object) -> ())?) -> Self {
        return events(key: "touchUpOutside", action: value, events: .touchUpOutside)
    }

    @discardableResult
    public func touchCancel(_ value: ((Object) -> ())?) -> Self {
        return events(key: "touchCancel", action: value, events: .touchCancel)
    }

    @discardableResult
    public func valueChanged(_ value: ((Object) -> ())?) -> Self {
        return events(key: "valueChanged", action: value, events: .valueChanged)
    }

    @discardableResult
    public func primaryActionTriggered(_ value: ((Object) -> ())?) -> Self {
        return events(key: "primaryActionTriggered", action: value, events: .primaryActionTriggered)
    }

    @discardableResult
    public func editingDidBegin(_ value: ((Object) -> ())?) -> Self {
        return events(key: "editingDidBegin", action: value, events: .editingDidBegin)
    }

    @discardableResult
    public func editingChanged(_ value: ((Object) -> ())?) -> Self {
        return events(key: "editingChanged", action: value, events: .editingChanged)
    }

    @discardableResult
    public func editingDidEnd(_ value: ((Object) -> ())?) -> Self {
        return events(key: "editingDidEnd", action: value, events: .editingDidEnd)
    }

    @discardableResult
    public func editingDidEndOnExit(_ value: ((Object) -> ())?) -> Self {
        return events(key: "editingDidEndOnExit", action: value, events: .editingDidEndOnExit)
    }

    @discardableResult
    public func allTouchEvents(_ value: ((Object) -> ())?) -> Self {
        return events(key: "allTouchEvents", action: value, events: .allTouchEvents)
    }

    @discardableResult
    public func allEditingEvents(_ value: ((Object) -> ())?) -> Self {
        return events(key: "allEditingEvents", action: value, events: .allEditingEvents)
    }

    @discardableResult
    public func applicationReserved(_ value: ((Object) -> ())?) -> Self {
        return events(key: "applicationReserved", action: value, events: .applicationReserved)
    }

    @discardableResult
    public func systemReserved(_ value: ((Object) -> ())?) -> Self {
        return events(key: "systemReserved", action: value, events: .systemReserved)
    }

    @discardableResult
    public func allEvents(_ value: ((Object) -> ())?) -> Self {
        return events(key: "allEvents", action: value, events: .allEvents)
    }

    private func events(key: String, action: ((Object) -> ())?, events: UIControlEvents) -> Self {
        return targetAction(key: key, action: action) { view, box in
            view.addTarget(box, action: ActionBox.selector, for: events)
        }
    }
}
