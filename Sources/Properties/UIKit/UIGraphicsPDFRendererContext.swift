//
//  UIGraphicsPDFRendererContext.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 10.0, *)
extension PandaChain where Object: UIGraphicsPDFRendererContext {
    @discardableResult
    public func url(_ url: URL, for rect: CGRect) -> PandaChain {
        object.setURL(url, for: rect)
        return self
    }

    @discardableResult
    public func destinationWithName(_ name: String, for rect: CGRect) -> PandaChain {
        object.setDestinationWithName(name, for: rect)
        return self
    }
}
