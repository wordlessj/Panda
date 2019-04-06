//
//  UISearchController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

public protocol UISearchControllerConvertible {}

extension UISearchController: UISearchControllerConvertible {}
extension PandaChain: UISearchControllerConvertible {}

extension PandaChain where Object: UISearchController {
    @discardableResult
    public func searchResultsUpdater(_ value: UISearchResultsUpdating?) -> PandaChain {
        object.searchResultsUpdater = value
        return self
    }

    @discardableResult
    public func isActive(_ value: Bool) -> PandaChain {
        object.isActive = value
        return self
    }

    @discardableResult
    public func delegate(_ value: UISearchControllerDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func dimsBackgroundDuringPresentation(_ value: Bool) -> PandaChain {
        object.dimsBackgroundDuringPresentation = value
        return self
    }

    @available(iOS 9.1, *)
    @discardableResult
    public func obscuresBackgroundDuringPresentation(_ value: Bool) -> PandaChain {
        object.obscuresBackgroundDuringPresentation = value
        return self
    }

    @discardableResult
    public func hidesNavigationBarDuringPresentation(_ value: Bool) -> PandaChain {
        object.hidesNavigationBarDuringPresentation = value
        return self
    }
}
