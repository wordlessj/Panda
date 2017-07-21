//
//  UITextChecker.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UITextChecker {
    @discardableResult
    public func ignoredWords(_ value: [String]?) -> PandaChain {
        object.ignoredWords = value
        return self
    }
}
