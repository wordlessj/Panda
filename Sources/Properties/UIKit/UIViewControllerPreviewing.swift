//
//  UIViewControllerPreviewing.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIViewControllerPreviewing {
    @available(iOS 9.0, *)
    @discardableResult
    public func sourceRect(_ value: CGRect) -> PandaChain {
        object.sourceRect = value
        return self
    }
}
