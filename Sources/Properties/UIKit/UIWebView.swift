//
//  UIWebView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UIWebView {
    @discardableResult
    public func delegate(_ value: UIWebViewDelegate?) -> Self {
        return addAttributes(key: "delegate", value: value) {
            $0.delegate = value
        }
    }

    @discardableResult
    public func scalesPageToFit(_ value: Bool) -> Self {
        return addAttributes(key: "scalesPageToFit", value: value) {
            $0.scalesPageToFit = value
        }
    }

    @discardableResult
    public func dataDetectorTypes(_ value: UIDataDetectorTypes) -> Self {
        return addAttributes(key: "dataDetectorTypes", value: value) {
            $0.dataDetectorTypes = value
        }
    }

    @discardableResult
    public func allowsInlineMediaPlayback(_ value: Bool) -> Self {
        return addAttributes(key: "allowsInlineMediaPlayback", value: value) {
            $0.allowsInlineMediaPlayback = value
        }
    }

    @discardableResult
    public func mediaPlaybackRequiresUserAction(_ value: Bool) -> Self {
        return addAttributes(key: "mediaPlaybackRequiresUserAction", value: value) {
            $0.mediaPlaybackRequiresUserAction = value
        }
    }

    @discardableResult
    public func mediaPlaybackAllowsAirPlay(_ value: Bool) -> Self {
        return addAttributes(key: "mediaPlaybackAllowsAirPlay", value: value) {
            $0.mediaPlaybackAllowsAirPlay = value
        }
    }

    @discardableResult
    public func suppressesIncrementalRendering(_ value: Bool) -> Self {
        return addAttributes(key: "suppressesIncrementalRendering", value: value) {
            $0.suppressesIncrementalRendering = value
        }
    }

    @discardableResult
    public func keyboardDisplayRequiresUserAction(_ value: Bool) -> Self {
        return addAttributes(key: "keyboardDisplayRequiresUserAction", value: value) {
            $0.keyboardDisplayRequiresUserAction = value
        }
    }

    @discardableResult
    public func paginationMode(_ value: UIWebPaginationMode) -> Self {
        return addAttributes(key: "paginationMode", value: value) {
            $0.paginationMode = value
        }
    }

    @discardableResult
    public func paginationBreakingMode(_ value: UIWebPaginationBreakingMode) -> Self {
        return addAttributes(key: "paginationBreakingMode", value: value) {
            $0.paginationBreakingMode = value
        }
    }

    @discardableResult
    public func pageLength(_ value: CGFloat) -> Self {
        return addAttributes(key: "pageLength", value: value) {
            $0.pageLength = value
        }
    }

    @discardableResult
    public func gapBetweenPages(_ value: CGFloat) -> Self {
        return addAttributes(key: "gapBetweenPages", value: value) {
            $0.gapBetweenPages = value
        }
    }

    @discardableResult
    public func allowsPictureInPictureMediaPlayback(_ value: Bool) -> Self {
        return addAttributes(key: "allowsPictureInPictureMediaPlayback", value: value) {
            $0.allowsPictureInPictureMediaPlayback = value
        }
    }

    @discardableResult
    public func allowsLinkPreview(_ value: Bool) -> Self {
        return addAttributes(key: "allowsLinkPreview", value: value) {
            $0.allowsLinkPreview = value
        }
    }
}
