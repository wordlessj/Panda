//
//  Add.swift
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

public protocol ItemAdding {
    associatedtype AddableItem
    func add(_ item: AddableItem)
}

public protocol ItemRemoving {
    associatedtype RemovableItem
    func remove(_ item: RemovableItem)
}

extension PandaChain where Object: ItemAdding {
    /// Unified add for original `add*` methods. See `add()` on a specific type for more.
    ///
    /// For example:
    ///
    /// ```
    /// view.pd.add(
    ///     imageView.pd.image(logoImage),
    ///     label.pd.text(title),
    ///     button.pd.title(buttonTitle)
    /// )
    /// ```
    ///
    /// - parameter items: Plain objects or configured by `pd` extension.
    @discardableResult
    public func add(_ items: Object.AddableItem...) -> PandaChain {
        items.forEach { object.add($0) }
        return self
    }
}

extension PandaChain where Object: ItemRemoving {
    /// Unified remove for original `remove*` methods. See `remove()` on a specific type for more.
    ///
    /// - parameter items: Plain objects or configured by `pd` extension.
    @discardableResult
    public func remove(_ items: Object.RemovableItem...) -> PandaChain {
        items.forEach { object.remove($0) }
        return self
    }
}

private func typeError(container: Any, item: Any) -> Never {
    fatalError("`\(type(of: container))` cannot add or remove `\(type(of: item))`.")
}



public protocol CALayerAddable {}

extension CALayer: CALayerAddable {}
extension CAAnimation: CALayerAddable {}
extension PandaChain: CALayerAddable {}

public protocol CALayerRemovable {}

extension CALayer: CALayerRemovable {}
extension PandaChain: CALayerRemovable {}

extension CALayer: ItemAdding, ItemRemoving {
    /// Add `CALayer` and `CAAnimation`. For `CAAnimation`, key is `nil`.
    public func add(_ item: CALayerAddable) {
        let unboxedItem: Any = unbox(item)

        switch unboxedItem {
        case let layer as CALayer: addSublayer(layer)
        case let animation as CAAnimation: add(animation, forKey: nil)
        default: typeError(container: self, item: unboxedItem)
        }
    }

    /// Remove `CALayer`.
    public func remove(_ item: CALayerRemovable) {
        let unboxedItem: Any = unbox(item)

        switch unboxedItem {
        case let layer as CALayer: layer.removeFromSuperlayer()
        default: typeError(container: self, item: unboxedItem)
        }
    }
}



public protocol UIDynamicAnimatorAddable {}

extension UIDynamicBehavior: UIDynamicAnimatorAddable {}
extension PandaChain: UIDynamicAnimatorAddable {}

public protocol UIDynamicAnimatorRemovable {}

extension UIDynamicBehavior: UIDynamicAnimatorRemovable {}
extension PandaChain: UIDynamicAnimatorRemovable {}

extension UIDynamicAnimator: ItemAdding, ItemRemoving {
    /// Add `UIDynamicBehavior`.
    public func add(_ item: UIDynamicAnimatorAddable) {
        let unboxedItem: Any = unbox(item)

        switch unboxedItem {
        case let behavior as UIDynamicBehavior: addBehavior(behavior)
        default: typeError(container: self, item: unboxedItem)
        }
    }

    /// Remove `UIDynamicBehavior`.
    public func remove(_ item: UIDynamicAnimatorRemovable) {
        let unboxedItem: Any = unbox(item)

        switch unboxedItem {
        case let behavior as UIDynamicBehavior: removeBehavior(behavior)
        default: typeError(container: self, item: unboxedItem)
        }
    }
}



public protocol UIDynamicBehaviorAddable {}

extension UIDynamicBehavior: UIDynamicBehaviorAddable {}
extension PandaChain: UIDynamicBehaviorAddable {}

public protocol UIDynamicBehaviorRemovable {}

extension UIDynamicBehavior: UIDynamicBehaviorRemovable {}
extension PandaChain: UIDynamicBehaviorRemovable {}

extension UIDynamicBehavior: ItemAdding, ItemRemoving {
    /// Add `UIDynamicBehavior`.
    public func add(_ item: UIDynamicBehaviorAddable) {
        let unboxedItem: Any = unbox(item)

        switch unboxedItem {
        case let behavior as UIDynamicBehavior: addChildBehavior(behavior)
        default: typeError(container: self, item: unboxedItem)
        }
    }

    /// Remove `UIDynamicBehavior`.
    public func remove(_ item: UIDynamicBehaviorRemovable) {
        let unboxedItem: Any = unbox(item)

        switch unboxedItem {
        case let behavior as UIDynamicBehavior: removeChildBehavior(behavior)
        default: typeError(container: self, item: unboxedItem)
        }
    }
}



public protocol UIViewAddable {}

extension UIGestureRecognizer: UIViewAddable {}
extension UIMotionEffect: UIViewAddable {}
extension NSLayoutConstraint: UIViewAddable {}
extension UIView: UIViewAddable {}
@available(iOS 9.0, *)
extension UILayoutGuide: UIViewAddable {}
extension PandaChain: UIViewAddable {}

@available(iOS 11.0, *)
extension UIDragInteraction: UIViewAddable {}
@available(iOS 11.0, *)
extension UIDropInteraction: UIViewAddable {}
@available(iOS 11.0, *)
extension UISpringLoadedInteraction: UIViewAddable {}

public protocol UIViewRemovable {}

extension UIGestureRecognizer: UIViewRemovable {}
extension UIMotionEffect: UIViewRemovable {}
extension NSLayoutConstraint: UIViewRemovable {}
extension UIView: UIViewRemovable {}
@available(iOS 9.0, *)
extension UILayoutGuide: UIViewRemovable {}
extension PandaChain: UIViewRemovable {}

@available(iOS 11.0, *)
extension UIDragInteraction: UIViewRemovable {}
@available(iOS 11.0, *)
extension UIDropInteraction: UIViewRemovable {}
@available(iOS 11.0, *)
extension UISpringLoadedInteraction: UIViewRemovable {}

extension UIView: ItemAdding, ItemRemoving {
    /// Add `UIView`, `UIGestureRecognizer`, `UIMotionEffect`,
    /// `NSLayoutConstraint`, `UILayoutGuide` and `UIInteraction`.
    ///
    /// If receiver is `UIStackView`, `UIView` will be added using `addArrangedSubview`.
    public func add(_ item: UIViewAddable) {
        let unboxedItem: Any = unbox(item)

        switch unboxedItem {
        case let gesture as UIGestureRecognizer: addGestureRecognizer(gesture)
        case let effect as UIMotionEffect: addMotionEffect(effect)
        case let constraint as NSLayoutConstraint: addConstraint(constraint)
        case let view as UIView:
            if #available(iOS 9.0, *), let stackView = self as? UIStackView {
                stackView.addArrangedSubview(view)
            } else {
                addSubview(view)
            }
        default:
            if #available(iOS 9.0, *), let guide = unboxedItem as? UILayoutGuide {
                addLayoutGuide(guide)
            } else if #available(iOS 11.0, *), let interaction = unboxedItem as? UIInteraction {
                addInteraction(interaction)
            } else {
                typeError(container: self, item: unboxedItem)
            }
        }
    }

    /// Remove `UIView`, `UIGestureRecognizer`, `UIMotionEffect`,
    /// `NSLayoutConstraint`, `UILayoutGuide` and `UIInteraction`.
    ///
    /// If receiver is `UIStackView`, `UIView` will be removed using `removeArrangedSubview`.
    public func remove(_ item: UIViewRemovable) {
        let unboxedItem: Any = unbox(item)

        switch unboxedItem {
        case let gesture as UIGestureRecognizer: removeGestureRecognizer(gesture)
        case let effect as UIMotionEffect: removeMotionEffect(effect)
        case let constraint as NSLayoutConstraint: removeConstraint(constraint)
        case let view as UIView:
            if #available(iOS 9.0, *), let stackView = self as? UIStackView {
                stackView.removeArrangedSubview(view)
            } else {
                view.removeFromSuperview()
            }
        default:
            if #available(iOS 9.0, *), let guide = unboxedItem as? UILayoutGuide {
                removeLayoutGuide(guide)
            } else if #available(iOS 11.0, *), let interaction = unboxedItem as? UIInteraction {
                removeInteraction(interaction)
            } else {
                typeError(container: self, item: unboxedItem)
            }
        }
    }
}



public protocol UIViewControllerAddable {}

extension UIViewController: UIViewControllerAddable {}
extension UIAlertAction: UIViewControllerAddable {}
extension UIKeyCommand: UIViewControllerAddable {}
extension PandaChain: UIViewControllerAddable {}

public protocol UIViewControllerRemovable {}

extension UIViewController: UIViewControllerRemovable {}
extension UIKeyCommand: UIViewControllerRemovable {}
extension PandaChain: UIViewControllerRemovable {}

extension UIViewController: ItemAdding, ItemRemoving {
    /// Add `UIViewController` and `UIKeyCommand`.
    ///
    /// If receiver is `UIAlertController`, then `UIAlertAction` can be added.
    public func add(_ item: UIViewControllerAddable) {
        let unboxedItem: Any = unbox(item)

        switch unboxedItem {
        case let controller as UIViewController: addChildViewController(controller)
        default:
            if let controller = self as? UIAlertController, let action = unboxedItem as? UIAlertAction {
                controller.addAction(action)
            } else if #available(iOS 9.0, *), let command = unboxedItem as? UIKeyCommand {
                addKeyCommand(command)
            } else {
                typeError(container: self, item: unboxedItem)
            }
        }
    }

    /// Remove `UIViewController` and `UIKeyCommand`.
    public func remove(_ item: UIViewControllerRemovable) {
        let unboxedItem: Any = unbox(item)

        switch unboxedItem {
        case let controller as UIViewController: controller.removeFromParentViewController()
        default:
            if #available(iOS 9.0, *), let command = unboxedItem as? UIKeyCommand {
                removeKeyCommand(command)
            } else {
                typeError(container: self, item: unboxedItem)
            }
        }
    }
}
