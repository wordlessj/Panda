//
//  CATextLayer.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import QuartzCore

extension PandaChain where Object: CATextLayer {
    @discardableResult
    public func string(_ value: Any?) -> PandaChain {
        object.string = value
        return self
    }

    @discardableResult
    public func font(_ value: CFTypeRef?) -> PandaChain {
        object.font = value
        return self
    }

    @discardableResult
    public func fontSize(_ value: CGFloat) -> PandaChain {
        object.fontSize = value
        return self
    }

    @discardableResult
    public func foregroundColor(_ value: CGColor?) -> PandaChain {
        object.foregroundColor = value
        return self
    }

    @discardableResult
    public func wrapped(_ value: Bool) -> PandaChain {
        object.isWrapped = value
        return self
    }

    @discardableResult
    public func truncationMode(_ value: String) -> PandaChain {
        object.truncationMode = value
        return self
    }

    @discardableResult
    public func alignmentMode(_ value: String) -> PandaChain {
        object.alignmentMode = value
        return self
    }

    @discardableResult
    public func allowsFontSubpixelQuantization(_ value: Bool) -> PandaChain {
        object.allowsFontSubpixelQuantization = value
        return self
    }
}
