//
//  NSStringDrawingContext.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: NSStringDrawingContext {
    /// `minimumScaleFactor`
    @discardableResult
    public func minScale(_ value: CGFloat) -> PandaChain {
        object.minimumScaleFactor = value
        return self
    }

    @available(*, deprecated, renamed: "minScale()")
    @discardableResult
    public func minimumScaleFactor(_ value: CGFloat) -> PandaChain {
        object.minimumScaleFactor = value
        return self
    }
}
