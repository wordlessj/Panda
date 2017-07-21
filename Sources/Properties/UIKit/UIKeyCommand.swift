//
//  UIKeyCommand.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIKeyCommand {
    @available(iOS 9.0, *)
    @discardableResult
    public func discoverabilityTitle(_ value: String?) -> PandaChain {
        object.discoverabilityTitle = value
        return self
    }
}
