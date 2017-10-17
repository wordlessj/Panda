//
//  UIPasteboard.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIPasteboard {
    @available(iOS 11.0, *)
    @discardableResult
    public func itemProviders(_ value: [NSItemProviderConvertible]) -> PandaChain {
        object.itemProviders = unboxArray(value)
        return self
    }

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

    @available(iOS, introduced: 3.0, deprecated: 10.0)
    @discardableResult
    public func persistent(_ persistent: Bool) -> PandaChain {
        object.setPersistent(persistent)
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func itemProviders(_ itemProviders: [NSItemProviderConvertible], localOnly: Bool, expirationDate: Date?) -> PandaChain {
        object.setItemProviders(unboxArray(itemProviders), localOnly: localOnly, expirationDate: expirationDate)
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func objects(_ objects: [NSItemProviderWriting]) -> PandaChain {
        object.setObjects(objects)
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func objects(_ objects: [NSItemProviderWriting], localOnly: Bool, expirationDate: Date?) -> PandaChain {
        object.setObjects(objects, localOnly: localOnly, expirationDate: expirationDate)
        return self
    }

    @discardableResult
    public func value(_ value: Any, forPasteboardType pasteboardType: String) -> PandaChain {
        object.setValue(value, forPasteboardType: pasteboardType)
        return self
    }

    @discardableResult
    public func data(_ data: Data, forPasteboardType pasteboardType: String) -> PandaChain {
        object.setData(data, forPasteboardType: pasteboardType)
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func items(_ items: [[String: Any]], options: [UIPasteboardOption: Any]) -> PandaChain {
        object.setItems(items, options: options)
        return self
    }
}
