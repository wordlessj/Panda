//
//  UIDocumentInteractionController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIDocumentInteractionController {
    @discardableResult
    public func delegate(_ value: UIDocumentInteractionControllerDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func url(_ value: URL?) -> PandaChain {
        object.url = value
        return self
    }

    @discardableResult
    public func uti(_ value: String?) -> PandaChain {
        object.uti = value
        return self
    }

    @discardableResult
    public func name(_ value: String?) -> PandaChain {
        object.name = value
        return self
    }

    @discardableResult
    public func annotation(_ value: Any?) -> PandaChain {
        object.annotation = value
        return self
    }
}
