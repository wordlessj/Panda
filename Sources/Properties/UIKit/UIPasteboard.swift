//
//  UIPasteboard.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIPasteboard {
    @discardableResult
    public func items(_ value: [[String: Any]]) -> PandaChain {
        object.items = value
        return self
    }

    @discardableResult
    public func string(_ value: String?) -> PandaChain {
        object.string = value
        return self
    }

    @discardableResult
    public func strings(_ value: [String]?) -> PandaChain {
        object.strings = value
        return self
    }

    @discardableResult
    public func url(_ value: URL?) -> PandaChain {
        object.url = value
        return self
    }

    @discardableResult
    public func urls(_ value: [URL]?) -> PandaChain {
        object.urls = value
        return self
    }

    @discardableResult
    public func image(_ value: UIImage?) -> PandaChain {
        object.image = value
        return self
    }

    @discardableResult
    public func images(_ value: [UIImage]?) -> PandaChain {
        object.images = value
        return self
    }

    @discardableResult
    public func color(_ value: UIColor?) -> PandaChain {
        object.color = value
        return self
    }

    @discardableResult
    public func colors(_ value: [UIColor]?) -> PandaChain {
        object.colors = value
        return self
    }
}
