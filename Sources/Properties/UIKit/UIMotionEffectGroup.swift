//
//  UIMotionEffectGroup.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIMotionEffectGroup {
    @discardableResult
    public func motionEffects(_ value: [UIMotionEffect]?) -> PandaChain {
        object.motionEffects = value
        return self
    }
}
