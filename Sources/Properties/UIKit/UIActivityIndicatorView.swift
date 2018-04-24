//
//  UIActivityIndicatorView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UIActivityIndicatorView {
    @discardableResult
    public func activityIndicatorViewStyle(_ value: UIActivityIndicatorViewStyle) -> Self {
        return addAttributes(key: "activityIndicatorViewStyle", value: value) {
            $0.activityIndicatorViewStyle = value
        }
    }

    @discardableResult
    public func hidesWhenStopped(_ value: Bool) -> Self {
        return addAttributes(key: "hidesWhenStopped", value: value) {
            $0.hidesWhenStopped = value
        }
    }

    @discardableResult
    public func color(_ value: UIColor?) -> Self {
        return addAttributes(key: "color", value: value) {
            $0.color = value
        }
    }
}
