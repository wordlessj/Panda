//
//  UIPasteConfigurationSupporting.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 11.0, *)
extension PandaChain where Object: UIPasteConfigurationSupporting {
    @discardableResult
    public func pasteConfiguration(_ value: UIPasteConfigurationConvertible?) -> PandaChain {
        object.pasteConfiguration = unbox(value)
        return self
    }
}
