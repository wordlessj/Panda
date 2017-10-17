//
//  UIInputView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

public protocol UIInputViewConvertible {}

extension UIInputView: UIInputViewConvertible {}
extension PandaChain: UIInputViewConvertible {}

extension PandaChain where Object: UIInputView {
    @available(iOS 9.0, *)
    @discardableResult
    public func allowsSelfSizing(_ value: Bool) -> PandaChain {
        object.allowsSelfSizing = value
        return self
    }
}
