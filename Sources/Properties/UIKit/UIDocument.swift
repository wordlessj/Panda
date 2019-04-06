//
//  UIDocument.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIDocument {
    @discardableResult
    public func fileModificationDate(_ value: Date?) -> PandaChain {
        object.fileModificationDate = value
        return self
    }

    @discardableResult
    public func undoManager(_ value: UndoManager!) -> PandaChain {
        object.undoManager = value
        return self
    }

    @discardableResult
    public func userActivity(_ value: NSUserActivity?) -> PandaChain {
        object.userActivity = value
        return self
    }
}
