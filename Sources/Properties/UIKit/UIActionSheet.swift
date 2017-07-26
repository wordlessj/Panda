//
//  UIActionSheet.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS, introduced: 2.0, deprecated: 8.3)
extension PandaChain where Object: UIActionSheet {
    @discardableResult
    public func delegate(_ value: UIActionSheetDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func title(_ value: String) -> PandaChain {
        object.title = value
        return self
    }

    /// `actionSheetStyle`
    @discardableResult
    public func style(_ value: UIActionSheetStyle) -> PandaChain {
        object.actionSheetStyle = value
        return self
    }

    @available(*, deprecated, renamed: "style()")
    @discardableResult
    public func actionSheetStyle(_ value: UIActionSheetStyle) -> PandaChain {
        object.actionSheetStyle = value
        return self
    }

    @discardableResult
    public func cancelButtonIndex(_ value: Int) -> PandaChain {
        object.cancelButtonIndex = value
        return self
    }

    @discardableResult
    public func destructiveButtonIndex(_ value: Int) -> PandaChain {
        object.destructiveButtonIndex = value
        return self
    }
}
