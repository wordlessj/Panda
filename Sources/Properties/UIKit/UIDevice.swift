//
//  UIDevice.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIDevice {
    @discardableResult
    public func batteryMonitoringEnabled(_ value: Bool) -> PandaChain {
        object.isBatteryMonitoringEnabled = value
        return self
    }

    @discardableResult
    public func proximityMonitoringEnabled(_ value: Bool) -> PandaChain {
        object.isProximityMonitoringEnabled = value
        return self
    }
}
