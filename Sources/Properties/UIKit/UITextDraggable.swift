//
//  UITextDraggable.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 11.0, *)
extension PandaChain where Object: UITextDraggable {
    @discardableResult
    public func textDragDelegate(_ value: UITextDragDelegate?) -> PandaChain {
        object.textDragDelegate = value
        return self
    }

    @discardableResult
    public func textDragOptions(_ value: UITextDragOptions) -> PandaChain {
        object.textDragOptions = value
        return self
    }
}
