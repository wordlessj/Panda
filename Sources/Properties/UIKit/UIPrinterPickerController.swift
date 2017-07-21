//
//  UIPrinterPickerController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIPrinterPickerController {
    @discardableResult
    public func delegate(_ value: UIPrinterPickerControllerDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }
}
