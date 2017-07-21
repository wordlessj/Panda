//
//  NSLayoutManager.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: NSLayoutManager {
    @discardableResult
    public func textStorage(_ value: NSTextStorage?) -> PandaChain {
        object.textStorage = value
        return self
    }

    @discardableResult
    public func delegate(_ value: NSLayoutManagerDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func showsInvisibleCharacters(_ value: Bool) -> PandaChain {
        object.showsInvisibleCharacters = value
        return self
    }

    @discardableResult
    public func showsControlCharacters(_ value: Bool) -> PandaChain {
        object.showsControlCharacters = value
        return self
    }

    @discardableResult
    public func hyphenationFactor(_ value: CGFloat) -> PandaChain {
        object.hyphenationFactor = value
        return self
    }

    @discardableResult
    public func usesFontLeading(_ value: Bool) -> PandaChain {
        object.usesFontLeading = value
        return self
    }

    @discardableResult
    public func allowsNonContiguousLayout(_ value: Bool) -> PandaChain {
        object.allowsNonContiguousLayout = value
        return self
    }
}
