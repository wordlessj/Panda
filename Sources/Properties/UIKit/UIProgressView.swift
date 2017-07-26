//
//  UIProgressView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIProgressView {
    /// `progressViewStyle`
    @discardableResult
    public func style(_ value: UIProgressViewStyle) -> PandaChain {
        object.progressViewStyle = value
        return self
    }

    @available(*, deprecated, renamed: "style()")
    @discardableResult
    public func progressViewStyle(_ value: UIProgressViewStyle) -> PandaChain {
        object.progressViewStyle = value
        return self
    }

    @discardableResult
    public func progress(_ value: Float) -> PandaChain {
        object.progress = value
        return self
    }

    /// `progressTintColor`
    @discardableResult
    public func progressTint(_ value: UIColor?) -> PandaChain {
        object.progressTintColor = value
        return self
    }

    @available(*, deprecated, renamed: "progressTint()")
    @discardableResult
    public func progressTintColor(_ value: UIColor?) -> PandaChain {
        object.progressTintColor = value
        return self
    }

    /// `trackTintColor`
    @discardableResult
    public func trackTint(_ value: UIColor?) -> PandaChain {
        object.trackTintColor = value
        return self
    }

    @available(*, deprecated, renamed: "trackTint()")
    @discardableResult
    public func trackTintColor(_ value: UIColor?) -> PandaChain {
        object.trackTintColor = value
        return self
    }

    @discardableResult
    public func progressImage(_ value: UIImage?) -> PandaChain {
        object.progressImage = value
        return self
    }

    @discardableResult
    public func trackImage(_ value: UIImage?) -> PandaChain {
        object.trackImage = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func observedProgress(_ value: Progress?) -> PandaChain {
        object.observedProgress = value
        return self
    }

    @discardableResult
    public func progress(_ progress: Float, animated: Bool) -> PandaChain {
        object.setProgress(progress, animated: animated)
        return self
    }
}
