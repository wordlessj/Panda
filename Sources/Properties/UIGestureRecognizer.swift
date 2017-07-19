//
//  UIGestureRecognizer.swift
//  Panda
//
//  Created by Javier on 11/1/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import UIKit

extension UIGestureRecognizer {
    @discardableResult
    public func isEnabled(_ value: Bool) -> Self {
        isEnabled = value
        return self
    }

    @discardableResult
    public func cancelsTouchesInView(_ value: Bool) -> Self {
        cancelsTouchesInView = value
        return self
    }

    @discardableResult
    public func delaysTouchesBegan(_ value: Bool) -> Self {
        delaysTouchesBegan = value
        return self
    }

    @discardableResult
    public func delaysTouchesEnded(_ value: Bool) -> Self {
        delaysTouchesEnded = value
        return self
    }

    @discardableResult
    public func delegate(_ value: UIGestureRecognizerDelegate?) -> Self {
        delegate = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func allowedPressTypes(_ value: [UIPressType]) -> Self {
        allowedPressTypes = value.map { $0.rawValue as NSNumber }
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func allowedTouchTypes(_ value: [UITouchType]) -> Self {
        allowedTouchTypes = value.map { $0.rawValue as NSNumber }
        return self
    }

    @available(iOS 9.2, *)
    @discardableResult
    public func requiresExclusiveTouchType(_ value: Bool) -> Self {
        requiresExclusiveTouchType = value
        return self
    }
}

extension UILongPressGestureRecognizer {
    @discardableResult
    public func minimumPressDuration(_ value: CFTimeInterval) -> Self {
        minimumPressDuration = value
        return self
    }

    @discardableResult
    public func numberOfTouchesRequired(_ value: Int) -> Self {
        numberOfTouchesRequired = value
        return self
    }

    @discardableResult
    public func numberOfTapsRequired(_ value: Int) -> Self {
        numberOfTapsRequired = value
        return self
    }

    @discardableResult
    public func allowableMovement(_ value: CGFloat) -> Self {
        allowableMovement = value
        return self
    }
}

extension UIPanGestureRecognizer {
    @discardableResult
    public func maximumNumberOfTouches(_ value: Int) -> Self {
        maximumNumberOfTouches = value
        return self
    }

    @discardableResult
    public func minimumNumberOfTouches(_ value: Int) -> Self {
        minimumNumberOfTouches = value
        return self
    }
}

extension UIPinchGestureRecognizer {
    @discardableResult
    public func scale(_ value: CGFloat) -> Self {
        scale = value
        return self
    }
}

extension UIRotationGestureRecognizer {
    @discardableResult
    public func rotation(_ value: CGFloat) -> Self {
        rotation = value
        return self
    }
}

extension UIScreenEdgePanGestureRecognizer {
    @discardableResult
    public func edges(_ value: UIRectEdge) -> Self {
        edges = value
        return self
    }
}

extension UISwipeGestureRecognizer {
    @discardableResult
    public func direction(_ value: UISwipeGestureRecognizerDirection) -> Self {
        direction = value
        return self
    }

    @discardableResult
    public func numberOfTouchesRequired(_ value: Int) -> Self {
        numberOfTouchesRequired = value
        return self
    }
}

extension UITapGestureRecognizer {
    @discardableResult
    public func numberOfTapsRequired(_ value: Int) -> Self {
        numberOfTapsRequired = value
        return self
    }

    @discardableResult
    public func numberOfTouchesRequired(_ value: Int) -> Self {
        numberOfTouchesRequired = value
        return self
    }
}
