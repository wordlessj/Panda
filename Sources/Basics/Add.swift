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
    func add(_ item: Any)
}

public protocol ItemRemoving {
    func remove(_ item: Any)
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
    public func add(_ items: Any...) -> PandaChain {
        items.forEach { object.add($0) }
        return self
    }
}

extension PandaChain where Object: ItemRemoving {
    /// Unified remove for original `remove*` methods. See `remove()` on a specific type for more.
    ///
    /// - parameter items: Plain objects or configured by `pd` extension.
    @discardableResult
    public func remove(_ items: Any...) -> PandaChain {
        items.forEach { object.remove($0) }
        return self
    }
}

func unbox(_ item: Any) -> Any {
    if let chain = item as? PandaChainProtocol {
        return chain.anyObject
    } else {
        return item
    }
}

extension CALayer: ItemAdding, ItemRemoving {
    /// Add `CALayer` and `CAAnimation`. For `CAAnimation`, key is `nil`.
    public func add(_ item: Any) {
        switch unbox(item) {
        case let layer as CALayer: addSublayer(layer)
        case let animation as CAAnimation: add(animation, forKey: nil)
        default: break
        }
    }

    /// Remove `CALayer`.
    public func remove(_ item: Any) {
        switch unbox(item) {
        case let layer as CALayer: layer.removeFromSuperlayer()
        default: break
        }
    }
}

extension UIAlertController {
    /// Add `UIAlertAction`, `UIViewController` and `UIKeyCommand`.
    public override func add(_ item: Any) {
        switch unbox(item) {
        case let action as UIAlertAction: addAction(action)
        default: super.add(item)
        }
    }
}

extension UIDynamicAnimator: ItemAdding, ItemRemoving {
    /// Add `UIDynamicBehavior`.
    public func add(_ item: Any) {
        switch unbox(item) {
        case let behavior as UIDynamicBehavior: addBehavior(behavior)
        default: break
        }
    }

    /// Remove `UIDynamicBehavior`.
    public func remove(_ item: Any) {
        switch unbox(item) {
        case let behavior as UIDynamicBehavior: removeBehavior(behavior)
        default: break
        }
    }
}

extension UIDynamicBehavior: ItemAdding, ItemRemoving {
    /// Add `UIDynamicBehavior`.
    public func add(_ item: Any) {
        switch unbox(item) {
        case let behavior as UIDynamicBehavior: addChildBehavior(behavior)
        default: break
        }
    }

    /// Remove `UIDynamicBehavior`.
    public func remove(_ item: Any) {
        switch unbox(item) {
        case let behavior as UIDynamicBehavior: removeChildBehavior(behavior)
        default: break
        }
    }
}

extension UIView: ItemAdding, ItemRemoving {
    /// Add `UIView`, `UIGestureRecognizer`, `UIMotionEffect`,
    /// `NSLayoutConstraint`, `UILayoutGuide` and `UIInteraction`.
    ///
    /// If receiver is `UIStackView`, `UIView` will be added using `addArrangedSubview`.
    public func add(_ item: Any) {
        let unboxedItem = unbox(item)

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
            }
        }
    }

    /// Remove `UIView`, `UIGestureRecognizer`, `UIMotionEffect`,
    /// `NSLayoutConstraint`, `UILayoutGuide` and `UIInteraction`.
    ///
    /// If receiver is `UIStackView`, `UIView` will be removed using `removeArrangedSubview`.
    public func remove(_ item: Any) {
        let unboxedItem = unbox(item)

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
            }
        }
    }
}

extension UIViewController: ItemAdding, ItemRemoving {
    /// Add `UIViewController` and `UIKeyCommand`.
    @objc public func add(_ item: Any) {
        let unboxedItem = unbox(item)

        switch unboxedItem {
        case let controller as UIViewController: addChildViewController(controller)
        default:
            if #available(iOS 9.0, *), let command = unboxedItem as? UIKeyCommand {
                addKeyCommand(command)
            }
        }
    }

    /// Remove `UIViewController` and `UIKeyCommand`.
    public func remove(_ item: Any) {
        let unboxedItem = unbox(item)

        switch unboxedItem {
        case let controller as UIViewController: controller.removeFromParentViewController()
        default:
            if #available(iOS 9.0, *), let command = unboxedItem as? UIKeyCommand {
                removeKeyCommand(command)
            }
        }
    }
}
