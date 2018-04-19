//
//  UITableViewHeaderFooterView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UITableViewHeaderFooterView {
    /// `backgroundView`
    @discardableResult
    public func background(_ value: UIView?) -> Self {
        return addAttributes(key: "backgroundView", value: value) {
            $0.backgroundView = value
        }
    }

    @available(*, deprecated, renamed: "background()")
    @discardableResult
    public func backgroundView(_ value: UIView?) -> Self {
        return addAttributes(key: "backgroundView", value: value) {
            $0.backgroundView = value
        }
    }
}
