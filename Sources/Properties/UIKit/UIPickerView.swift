//
//  UIPickerView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UIPickerView {
    @discardableResult
    public func dataSource(_ value: UIPickerViewDataSource?) -> Self {
        return addAttributes(key: "dataSource", value: value) {
            $0.dataSource = value
        }
    }

    @discardableResult
    public func delegate(_ value: UIPickerViewDelegate?) -> Self {
        return addAttributes(key: "delegate", value: value) {
            $0.delegate = value
        }
    }

    @discardableResult
    public func showsSelectionIndicator(_ value: Bool) -> Self {
        return addAttributes(key: "showsSelectionIndicator", value: value) {
            $0.showsSelectionIndicator = value
        }
    }
}
