//
//  UITableViewHeaderFooterView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UITableViewHeaderFooterView {
    @discardableResult
    public func backgroundView(_ value: UIViewConvertible?) -> PandaChain {
        object.backgroundView = unbox(value)
        return self
    }
}
