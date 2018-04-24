//
//  UIRefreshControl.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UIRefreshControl {
    @discardableResult
    public func tintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "tintColor", value: value) {
            $0.tintColor = value
        }
    }

    @discardableResult
    public func attributedTitle(_ value: NSAttributedString?) -> Self {
        return addAttributes(key: "attributedTitle", value: value) {
            $0.attributedTitle = value
        }
    }
}
