//
//  UIActivityIndicatorView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIActivityIndicatorView {
    @discardableResult
    public func style(_ value: UIActivityIndicatorView.Style) -> PandaChain {
        object.style = value
        return self
    }

    @discardableResult
    public func hidesWhenStopped(_ value: Bool) -> PandaChain {
        object.hidesWhenStopped = value
        return self
    }

    @discardableResult
    public func color(_ value: UIColor!) -> PandaChain {
        object.color = value
        return self
    }
}
