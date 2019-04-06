//
//  UIPrintInfo.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

public protocol UIPrintInfoConvertible {}

extension UIPrintInfo: UIPrintInfoConvertible {}
extension PandaChain: UIPrintInfoConvertible {}

extension PandaChain where Object: UIPrintInfo {
    @discardableResult
    public func printerID(_ value: String?) -> PandaChain {
        object.printerID = value
        return self
    }

    @discardableResult
    public func jobName(_ value: String) -> PandaChain {
        object.jobName = value
        return self
    }

    @discardableResult
    public func outputType(_ value: UIPrintInfo.OutputType) -> PandaChain {
        object.outputType = value
        return self
    }

    @discardableResult
    public func orientation(_ value: UIPrintInfo.Orientation) -> PandaChain {
        object.orientation = value
        return self
    }

    @discardableResult
    public func duplex(_ value: UIPrintInfo.Duplex) -> PandaChain {
        object.duplex = value
        return self
    }
}
