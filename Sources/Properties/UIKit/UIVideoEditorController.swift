//
//  UIVideoEditorController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIVideoEditorController {
    @discardableResult
    public func delegate(_ value: (UINavigationControllerDelegate & UIVideoEditorControllerDelegate)?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func videoPath(_ value: String) -> PandaChain {
        object.videoPath = value
        return self
    }

    @discardableResult
    public func videoMaximumDuration(_ value: TimeInterval) -> PandaChain {
        object.videoMaximumDuration = value
        return self
    }

    @discardableResult
    public func videoQuality(_ value: UIImagePickerControllerQualityType) -> PandaChain {
        object.videoQuality = value
        return self
    }
}
