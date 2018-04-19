//
//  UIVisualEffectView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UIVisualEffectView {
    @discardableResult
    public func effect(_ value: UIVisualEffect?) -> Self {
        return addAttributes(key: "effect", value: value) {
            $0.effect = value
        }
    }
}
