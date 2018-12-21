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
    public func sourceType(_ value: UIImagePickerController.SourceType) -> PandaChain {
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

    @available(iOS 11.0, *)
    @discardableResult
    public func imageExportPreset(_ value: UIImagePickerController.ImageURLExportPreset) -> PandaChain {
        object.imageExportPreset = value
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
    public func videoQuality(_ value: UIImagePickerController.QualityType) -> PandaChain {
        object.videoQuality = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func videoExportPreset(_ value: String) -> PandaChain {
        object.videoExportPreset = value
        return self
    }

    @discardableResult
    public func showsCameraControls(_ value: Bool) -> PandaChain {
        object.showsCameraControls = value
        return self
    }

    @discardableResult
    public func cameraOverlayView(_ value: UIViewConvertible?) -> PandaChain {
        object.cameraOverlayView = unbox(value)
        return self
    }

    @discardableResult
    public func cameraViewTransform(_ value: CGAffineTransform) -> PandaChain {
        object.cameraViewTransform = value
        return self
    }

    @discardableResult
    public func cameraCaptureMode(_ value: UIImagePickerController.CameraCaptureMode) -> PandaChain {
        object.cameraCaptureMode = value
        return self
    }

    @discardableResult
    public func cameraDevice(_ value: UIImagePickerController.CameraDevice) -> PandaChain {
        object.cameraDevice = value
        return self
    }

    @discardableResult
    public func cameraFlashMode(_ value: UIImagePickerController.CameraFlashMode) -> PandaChain {
        object.cameraFlashMode = value
        return self
    }
}
