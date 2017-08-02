//
//  UIDragSession.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 11.0, *)
extension PandaChain where Object: UIDragSession {
    @discardableResult
    public func localContext(_ value: Any?) -> PandaChain {
        object.localContext = value
        return self
    }
}
