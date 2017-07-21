//
//  UIVisualEffectView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIVisualEffectView {
    @discardableResult
    public func effect(_ value: UIVisualEffect?) -> PandaChain {
        object.effect = value
        return self
    }
}
