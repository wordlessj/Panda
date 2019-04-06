//
//  UIGestureRecognizer.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

public protocol UIGestureRecognizerConvertible {}

extension UIGestureRecognizer: UIGestureRecognizerConvertible {}
extension PandaChain: UIGestureRecognizerConvertible {}

extension PandaChain where Object: UIGestureRecognizer {
    @discardableResult
    public func delegate(_ value: UIGestureRecognizerDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func isEnabled(_ value: Bool) -> PandaChain {
        object.isEnabled = value
        return self
    }

    @discardableResult
    public func cancelsTouchesInView(_ value: Bool) -> PandaChain {
        object.cancelsTouchesInView = value
        return self
    }

    @discardableResult
    public func delaysTouchesBegan(_ value: Bool) -> PandaChain {
        object.delaysTouchesBegan = value
        return self
    }

    @discardableResult
    public func delaysTouchesEnded(_ value: Bool) -> PandaChain {
        object.delaysTouchesEnded = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func allowedTouchTypes(_ value: [NSNumber]) -> PandaChain {
        object.allowedTouchTypes = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func allowedPressTypes(_ value: [NSNumber]) -> PandaChain {
        object.allowedPressTypes = value
        return self
    }

    @available(iOS 9.2, *)
    @discardableResult
    public func requiresExclusiveTouchType(_ value: Bool) -> PandaChain {
        object.requiresExclusiveTouchType = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func name(_ value: String?) -> PandaChain {
        object.name = value
        return self
    }
}
