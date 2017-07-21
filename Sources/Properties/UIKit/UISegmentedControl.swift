//
//  UISegmentedControl.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UISegmentedControl {
    @discardableResult
    public func isMomentary(_ value: Bool) -> PandaChain {
        object.isMomentary = value
        return self
    }

    @discardableResult
    public func apportionsSegmentWidthsByContent(_ value: Bool) -> PandaChain {
        object.apportionsSegmentWidthsByContent = value
        return self
    }

    @discardableResult
    public func selectedSegmentIndex(_ value: Int) -> PandaChain {
        object.selectedSegmentIndex = value
        return self
    }

    @discardableResult
    public func tintColor(_ value: UIColor?) -> PandaChain {
        object.tintColor = value
        return self
    }
}
