//
//  UISpringLoadedInteractionSupporting.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 11.0, *)
extension PandaChain where Object: UISpringLoadedInteractionSupporting {
    @available(iOS 11.0, *)
    @discardableResult
    public func isSpringLoaded(_ value: Bool) -> PandaChain {
        object.isSpringLoaded = value
        return self
    }
}
