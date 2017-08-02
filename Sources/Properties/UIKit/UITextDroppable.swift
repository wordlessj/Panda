//
//  UITextDroppable.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 11.0, *)
extension PandaChain where Object: UITextDroppable {
    @discardableResult
    public func textDropDelegate(_ value: UITextDropDelegate?) -> PandaChain {
        object.textDropDelegate = value
        return self
    }
}
