//
//  UITextDropProposal.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 11.0, *)
extension PandaChain where Object: UITextDropProposal {
    @discardableResult
    public func dropAction(_ value: UITextDropProposal.Action) -> PandaChain {
        object.dropAction = value
        return self
    }

    @discardableResult
    public func dropProgressMode(_ value: UITextDropProposal.ProgressMode) -> PandaChain {
        object.dropProgressMode = value
        return self
    }

    @discardableResult
    public func useFastSameViewOperations(_ value: Bool) -> PandaChain {
        object.useFastSameViewOperations = value
        return self
    }

    @discardableResult
    public func dropPerformer(_ value: UITextDropProposal.Performer) -> PandaChain {
        object.dropPerformer = value
        return self
    }
}
