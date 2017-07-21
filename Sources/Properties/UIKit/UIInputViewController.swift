//
//  UIInputViewController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIInputViewController {
    @discardableResult
    public func inputView(_ value: UIInputView?) -> PandaChain {
        object.inputView = value
        return self
    }

    @discardableResult
    public func primaryLanguage(_ value: String?) -> PandaChain {
        object.primaryLanguage = value
        return self
    }
}
