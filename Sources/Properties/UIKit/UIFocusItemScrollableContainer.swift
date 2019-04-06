//
//  UIFocusItemScrollableContainer.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 12.0, *)
extension PandaChain where Object: UIFocusItemScrollableContainer {
    @discardableResult
    public func contentOffset(_ value: CGPoint) -> PandaChain {
        object.contentOffset = value
        return self
    }
}
