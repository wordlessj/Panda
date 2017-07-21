//
//  UIPickerView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIPickerView {
    @discardableResult
    public func dataSource(_ value: UIPickerViewDataSource?) -> PandaChain {
        object.dataSource = value
        return self
    }

    @discardableResult
    public func delegate(_ value: UIPickerViewDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func showsSelectionIndicator(_ value: Bool) -> PandaChain {
        object.showsSelectionIndicator = value
        return self
    }
}
