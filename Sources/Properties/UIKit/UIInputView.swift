//
//  UIInputView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UIInputView {
    @discardableResult
    public func allowsSelfSizing(_ value: Bool) -> Self {
        return addAttributes(key: "allowsSelfSizing", value: value) {
            $0.allowsSelfSizing = value
        }
    }
}
