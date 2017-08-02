//
//  UITableViewHeaderFooterView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UITableViewHeaderFooterView {
    /// `backgroundView`
    @discardableResult
    public func background(_ value: UIView?) -> PandaChain {
        object.backgroundView = value
        return self
    }

    @available(*, deprecated, renamed: "background()")
    @discardableResult
    public func backgroundView(_ value: UIView?) -> PandaChain {
        object.backgroundView = value
        return self
    }
}
