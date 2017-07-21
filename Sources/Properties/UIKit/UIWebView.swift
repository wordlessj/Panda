//
//  UIWebView.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIWebView {
    @discardableResult
    public func delegate(_ value: UIWebViewDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func scalesPageToFit(_ value: Bool) -> PandaChain {
        object.scalesPageToFit = value
        return self
    }

    @discardableResult
    public func dataDetectorTypes(_ value: UIDataDetectorTypes) -> PandaChain {
        object.dataDetectorTypes = value
        return self
    }

    @discardableResult
    public func allowsInlineMediaPlayback(_ value: Bool) -> PandaChain {
        object.allowsInlineMediaPlayback = value
        return self
    }

    @discardableResult
    public func mediaPlaybackRequiresUserAction(_ value: Bool) -> PandaChain {
        object.mediaPlaybackRequiresUserAction = value
        return self
    }

    @discardableResult
    public func mediaPlaybackAllowsAirPlay(_ value: Bool) -> PandaChain {
        object.mediaPlaybackAllowsAirPlay = value
        return self
    }

    @discardableResult
    public func suppressesIncrementalRendering(_ value: Bool) -> PandaChain {
        object.suppressesIncrementalRendering = value
        return self
    }

    @discardableResult
    public func keyboardDisplayRequiresUserAction(_ value: Bool) -> PandaChain {
        object.keyboardDisplayRequiresUserAction = value
        return self
    }

    @discardableResult
    public func paginationMode(_ value: UIWebPaginationMode) -> PandaChain {
        object.paginationMode = value
        return self
    }

    @discardableResult
    public func paginationBreakingMode(_ value: UIWebPaginationBreakingMode) -> PandaChain {
        object.paginationBreakingMode = value
        return self
    }

    @discardableResult
    public func pageLength(_ value: CGFloat) -> PandaChain {
        object.pageLength = value
        return self
    }

    @discardableResult
    public func gapBetweenPages(_ value: CGFloat) -> PandaChain {
        object.gapBetweenPages = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func allowsPictureInPictureMediaPlayback(_ value: Bool) -> PandaChain {
        object.allowsPictureInPictureMediaPlayback = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func allowsLinkPreview(_ value: Bool) -> PandaChain {
        object.allowsLinkPreview = value
        return self
    }
}
