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
        object.truncationMode = convertToCATextLayerTruncationMode(value)
        return self
    }

    /// `alignmentMode`
    @discardableResult
    public func alignMode(_ value: String) -> PandaChain {
        object.alignmentMode = convertToCATextLayerAlignmentMode(value)
        return self
    }

    @available(*, deprecated, renamed: "alignMode()")
    @discardableResult
    public func alignmentMode(_ value: String) -> PandaChain {
        object.alignmentMode = convertToCATextLayerAlignmentMode(value)
        return self
    }

    @discardableResult
    public func allowsFontSubpixelQuantization(_ value: Bool) -> PandaChain {
        object.allowsFontSubpixelQuantization = value
        return self
    }
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToCATextLayerTruncationMode(_ input: String) -> CATextLayerTruncationMode {
	return CATextLayerTruncationMode(rawValue: input)
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToCATextLayerAlignmentMode(_ input: String) -> CATextLayerAlignmentMode {
	return CATextLayerAlignmentMode(rawValue: input)
}
