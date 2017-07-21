//
//  NSTextAttachment.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: NSTextAttachment {
    @discardableResult
    public func contents(_ value: Data?) -> PandaChain {
        object.contents = value
        return self
    }

    @discardableResult
    public func fileType(_ value: String?) -> PandaChain {
        object.fileType = value
        return self
    }

    @discardableResult
    public func image(_ value: UIImage?) -> PandaChain {
        object.image = value
        return self
    }

    @discardableResult
    public func bounds(_ value: CGRect) -> PandaChain {
        object.bounds = value
        return self
    }

    @discardableResult
    public func fileWrapper(_ value: FileWrapper?) -> PandaChain {
        object.fileWrapper = value
        return self
    }
}
