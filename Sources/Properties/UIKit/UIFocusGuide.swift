//
//  UIFocusGuide.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 9.0, *)
extension PandaChain where Object: UIFocusGuide {
    @discardableResult
    public func enabled(_ value: Bool) -> PandaChain {
        object.isEnabled = value
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func preferredFocusEnvironments(_ value: [UIFocusEnvironment]?) -> PandaChain {
        object.preferredFocusEnvironments = value
        return self
    }

    @available(iOS, introduced: 9.0, deprecated: 10.0)
    @discardableResult
    public func preferredFocusedView(_ value: UIView?) -> PandaChain {
        object.preferredFocusedView = value
        return self
    }
}
