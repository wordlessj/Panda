//
//  UICloudSharingController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

@available(iOS 10.0, *)
extension PandaChain where Object: UICloudSharingController {
    @discardableResult
    public func delegate(_ value: UICloudSharingControllerDelegate) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func availablePermissions(_ value: UICloudSharingController.PermissionOptions) -> PandaChain {
        object.availablePermissions = value
        return self
    }
}
