//
//  UIImagePickerController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIImagePickerController {
    @discardableResult
    public func delegate(_ value: (UINavigationControllerDelegate & UIImagePickerControllerDelegate)?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func sourceType(_ value: UIImagePickerControllerSourceType) -> PandaChain {
        object.sourceType = value
        return self
    }

    @discardableResult
    public func mediaTypes(_ value: [String]) -> PandaChain {
        object.mediaTypes = value
        return self
    }

    @discardableResult
    public func allowsEditing(_ value: Bool) -> PandaChain {
        object.allowsEditing = value
        return self
    }

    /// `videoMaximumDuration`
    @discardableResult
    public func videoMaxDuration(_ value: TimeInterval) -> PandaChain {
        object.videoMaximumDuration = value
        return self
    }

    @available(*, deprecated, renamed: "videoMaxDuration()")
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

    @discardableResult
    public func showsCameraControls(_ value: Bool) -> PandaChain {
        object.showsCameraControls = value
        return self
    }

    @discardableResult
    public func cameraOverlayView(_ value: UIView?) -> PandaChain {
        object.cameraOverlayView = value
        return self
    }

    @discardableResult
    public func cameraViewTransform(_ value: CGAffineTransform) -> PandaChain {
        object.cameraViewTransform = value
        return self
    }

    @discardableResult
    public func cameraCaptureMode(_ value: UIImagePickerControllerCameraCaptureMode) -> PandaChain {
        object.cameraCaptureMode = value
        return self
    }

    @discardableResult
    public func cameraDevice(_ value: UIImagePickerControllerCameraDevice) -> PandaChain {
        object.cameraDevice = value
        return self
    }

    @discardableResult
    public func cameraFlashMode(_ value: UIImagePickerControllerCameraFlashMode) -> PandaChain {
        object.cameraFlashMode = value
        return self
    }
}
