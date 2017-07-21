//
//  UIScreen.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIScreen {
    @discardableResult
    public func currentMode(_ value: UIScreenMode?) -> PandaChain {
        object.currentMode = value
        return self
    }

    @discardableResult
    public func overscanCompensation(_ value: UIScreenOverscanCompensation) -> PandaChain {
        object.overscanCompensation = value
        return self
    }

    @discardableResult
    public func brightness(_ value: CGFloat) -> PandaChain {
        object.brightness = value
        return self
    }

    @discardableResult
    public func wantsSoftwareDimming(_ value: Bool) -> PandaChain {
        object.wantsSoftwareDimming = value
        return self
    }
}
