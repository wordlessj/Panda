//
//  CAEAGLLayer.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import QuartzCore

@available(iOS, introduced: 2.0, deprecated: 12.0)
extension PandaChain where Object: CAEAGLLayer {
    @available(iOS 9.0, *)
    @discardableResult
    public func presentsWithTransaction(_ value: Bool) -> PandaChain {
        object.presentsWithTransaction = value
        return self
    }
}
