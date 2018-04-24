//
//  UITableViewHeaderFooterView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UITableViewHeaderFooterView {
    @discardableResult
    public func backgroundView(_ value: UIView?) -> Self {
        return addAttributes(key: "backgroundView", value: value) {
            $0.backgroundView = value
        }
    }
}
