//
//  UIProgressView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UIProgressView {
    /// `progressViewStyle`
    @discardableResult
    public func style(_ value: UIProgressViewStyle) -> Self {
        return addAttributes(key: "progressViewStyle", value: value) {
            $0.progressViewStyle = value
        }
    }

    @available(*, deprecated, renamed: "style()")
    @discardableResult
    public func progressViewStyle(_ value: UIProgressViewStyle) -> Self {
        return addAttributes(key: "progressViewStyle", value: value) {
            $0.progressViewStyle = value
        }
    }

    @discardableResult
    public func progress(_ value: Float) -> Self {
        return addAttributes(key: "progress", value: value) {
            $0.progress = value
        }
    }

    /// `progressTintColor`
    @discardableResult
    public func progressTint(_ value: UIColor?) -> Self {
        return addAttributes(key: "progressTintColor", value: value) {
            $0.progressTintColor = value
        }
    }

    @available(*, deprecated, renamed: "progressTint()")
    @discardableResult
    public func progressTintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "progressTintColor", value: value) {
            $0.progressTintColor = value
        }
    }

    /// `trackTintColor`
    @discardableResult
    public func trackTint(_ value: UIColor?) -> Self {
        return addAttributes(key: "trackTintColor", value: value) {
            $0.trackTintColor = value
        }
    }

    @available(*, deprecated, renamed: "trackTint()")
    @discardableResult
    public func trackTintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "trackTintColor", value: value) {
            $0.trackTintColor = value
        }
    }

    @discardableResult
    public func progressImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "progressImage", value: value) {
            $0.progressImage = value
        }
    }

    @discardableResult
    public func trackImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "trackImage", value: value) {
            $0.trackImage = value
        }
    }

    @discardableResult
    public func observedProgress(_ value: Progress?) -> Self {
        return addAttributes(key: "observedProgress", value: value) {
            $0.observedProgress = value
        }
    }
}
