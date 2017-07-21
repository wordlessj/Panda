//
//  UIGraphicsPDFRendererFormat.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 10.0, *)
extension PandaChain where Object: UIGraphicsPDFRendererFormat {
    @discardableResult
    public func documentInfo(_ value: [String: Any]) -> PandaChain {
        object.documentInfo = value
        return self
    }
}
