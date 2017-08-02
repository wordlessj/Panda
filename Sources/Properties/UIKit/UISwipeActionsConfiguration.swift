//
//  UISwipeActionsConfiguration.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 11.0, *)
extension PandaChain where Object: UISwipeActionsConfiguration {
    @discardableResult
    public func performsFirstActionWithFullSwipe(_ value: Bool) -> PandaChain {
        object.performsFirstActionWithFullSwipe = value
        return self
    }
}
