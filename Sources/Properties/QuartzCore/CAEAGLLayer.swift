//
//  CAEAGLLayer.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import QuartzCore

extension PandaChain where Object: CAEAGLLayer {
    @available(iOS 9.0, *)
    @discardableResult
    public func presentsWithTransaction(_ value: Bool) -> PandaChain {
        object.presentsWithTransaction = value
        return self
    }
}
