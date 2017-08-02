//
//  UIDropSession.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 11.0, *)
extension PandaChain where Object: UIDropSession {
    @discardableResult
    public func progressIndicatorStyle(_ value: UIDropSessionProgressIndicatorStyle) -> PandaChain {
        object.progressIndicatorStyle = value
        return self
    }
}
