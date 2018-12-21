//
//  CALayer.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import QuartzCore

public protocol CALayerConvertible {}

extension CALayer: CALayerConvertible {}
extension PandaChain: CALayerConvertible {}

extension PandaChain where Object: CALayer {
    @discardableResult
    public func bounds(_ value: CGRect) -> PandaChain {
        object.bounds = value
        return self
    }

    @discardableResult
    public func position(_ value: CGPoint) -> PandaChain {
        object.position = value
        return self
    }

    @discardableResult
    public func zPosition(_ value: CGFloat) -> PandaChain {
        object.zPosition = value
        return self
    }

    @discardableResult
    public func anchorPoint(_ value: CGPoint) -> PandaChain {
        object.anchorPoint = value
        return self
    }

    @discardableResult
    public func anchorPointZ(_ value: CGFloat) -> PandaChain {
        object.anchorPointZ = value
        return self
    }

    @discardableResult
    public func transform(_ value: CATransform3D) -> PandaChain {
        object.transform = value
        return self
    }

    @discardableResult
    public func frame(_ value: CGRect) -> PandaChain {
        object.frame = value
        return self
    }

    @discardableResult
    public func hidden(_ value: Bool) -> PandaChain {
        object.isHidden = value
        return self
    }

    @discardableResult
    public func doubleSided(_ value: Bool) -> PandaChain {
        object.isDoubleSided = value
        return self
    }

    @discardableResult
    public func geometryFlipped(_ value: Bool) -> PandaChain {
        object.isGeometryFlipped = value
        return self
    }

    @discardableResult
    public func sublayers(_ value: [CALayerConvertible]?) -> PandaChain {
        object.sublayers = unboxArray(value)
        return self
    }

    @discardableResult
    public func sublayerTransform(_ value: CATransform3D) -> PandaChain {
        object.sublayerTransform = value
        return self
    }

    @discardableResult
    public func mask(_ value: CALayerConvertible?) -> PandaChain {
        object.mask = unbox(value)
        return self
    }

    /// `masksToBounds`
    @discardableResult
    public func masks(_ value: Bool) -> PandaChain {
        object.masksToBounds = value
        return self
    }

    @available(*, deprecated, renamed: "masks()")
    @discardableResult
    public func masksToBounds(_ value: Bool) -> PandaChain {
        object.masksToBounds = value
        return self
    }

    @discardableResult
    public func contents(_ value: Any?) -> PandaChain {
        object.contents = value
        return self
    }

    @discardableResult
    public func contentsRect(_ value: CGRect) -> PandaChain {
        object.contentsRect = value
        return self
    }

    @discardableResult
    public func contentsGravity(_ value: String) -> PandaChain {
        object.contentsGravity = convertToCALayerContentsGravity(value)
        return self
    }

    @discardableResult
    public func contentsCenter(_ value: CGRect) -> PandaChain {
        object.contentsCenter = value
        return self
    }

    @discardableResult
    public func minificationFilter(_ value: String) -> PandaChain {
        object.minificationFilter = convertToCALayerContentsFilter(value)
        return self
    }

    @discardableResult
    public func magnificationFilter(_ value: String) -> PandaChain {
        object.magnificationFilter = convertToCALayerContentsFilter(value)
        return self
    }

    @discardableResult
    public func minificationFilterBias(_ value: Float) -> PandaChain {
        object.minificationFilterBias = value
        return self
    }

    @discardableResult
    public func opaque(_ value: Bool) -> PandaChain {
        object.isOpaque = value
        return self
    }

    @discardableResult
    public func needsDisplayOnBoundsChange(_ value: Bool) -> PandaChain {
        object.needsDisplayOnBoundsChange = value
        return self
    }

    @discardableResult
    public func edgeAntialiasingMask(_ value: CAEdgeAntialiasingMask) -> PandaChain {
        object.edgeAntialiasingMask = value
        return self
    }

    /// `allowsEdgeAntialiasing`
    @discardableResult
    public func edgeAntialiasable(_ value: Bool) -> PandaChain {
        object.allowsEdgeAntialiasing = value
        return self
    }

    @available(*, deprecated, renamed: "edgeAntialiasable()")
    @discardableResult
    public func allowsEdgeAntialiasing(_ value: Bool) -> PandaChain {
        object.allowsEdgeAntialiasing = value
        return self
    }

    /// `backgroundColor`
    @discardableResult
    public func background(_ value: CGColor?) -> PandaChain {
        object.backgroundColor = value
        return self
    }

    @available(*, deprecated, renamed: "background()")
    @discardableResult
    public func backgroundColor(_ value: CGColor?) -> PandaChain {
        object.backgroundColor = value
        return self
    }

    @discardableResult
    public func cornerRadius(_ value: CGFloat) -> PandaChain {
        object.cornerRadius = value
        return self
    }

    @discardableResult
    public func borderWidth(_ value: CGFloat) -> PandaChain {
        object.borderWidth = value
        return self
    }

    @discardableResult
    public func borderColor(_ value: CGColor?) -> PandaChain {
        object.borderColor = value
        return self
    }

    @discardableResult
    public func opacity(_ value: Float) -> PandaChain {
        object.opacity = value
        return self
    }

    @discardableResult
    public func allowsGroupOpacity(_ value: Bool) -> PandaChain {
        object.allowsGroupOpacity = value
        return self
    }

    @discardableResult
    public func compositingFilter(_ value: Any?) -> PandaChain {
        object.compositingFilter = value
        return self
    }

    @discardableResult
    public func filters(_ value: [Any]?) -> PandaChain {
        object.filters = value
        return self
    }

    @discardableResult
    public func backgroundFilters(_ value: [Any]?) -> PandaChain {
        object.backgroundFilters = value
        return self
    }

    /// `shouldRasterize`
    @discardableResult
    public func rasterized(_ value: Bool) -> PandaChain {
        object.shouldRasterize = value
        return self
    }

    @available(*, deprecated, renamed: "rasterized()")
    @discardableResult
    public func shouldRasterize(_ value: Bool) -> PandaChain {
        object.shouldRasterize = value
        return self
    }

    @discardableResult
    public func rasterizationScale(_ value: CGFloat) -> PandaChain {
        object.rasterizationScale = value
        return self
    }

    @discardableResult
    public func shadowColor(_ value: CGColor?) -> PandaChain {
        object.shadowColor = value
        return self
    }

    @discardableResult
    public func shadowOpacity(_ value: Float) -> PandaChain {
        object.shadowOpacity = value
        return self
    }

    @discardableResult
    public func shadowOffset(_ value: CGSize) -> PandaChain {
        object.shadowOffset = value
        return self
    }

    @discardableResult
    public func shadowRadius(_ value: CGFloat) -> PandaChain {
        object.shadowRadius = value
        return self
    }

    @discardableResult
    public func shadowPath(_ value: CGPath?) -> PandaChain {
        object.shadowPath = value
        return self
    }

    @discardableResult
    public func actions(_ value: [String: CAAction]?) -> PandaChain {
        object.actions = value
        return self
    }

    @discardableResult
    public func name(_ value: String?) -> PandaChain {
        object.name = value
        return self
    }

    @discardableResult
    public func delegate(_ value: CALayerDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func style(_ value: [AnyHashable: Any]?) -> PandaChain {
        object.style = value
        return self
    }

    @discardableResult
    public func affineTransform(_ m: CGAffineTransform) -> PandaChain {
        object.setAffineTransform(m)
        return self
    }

    @discardableResult
    public func needsDisplay(_ r: CGRect) -> PandaChain {
        object.setNeedsDisplay(r)
        return self
    }
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToCALayerContentsGravity(_ input: String) -> CALayerContentsGravity {
	return CALayerContentsGravity(rawValue: input)
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToCALayerContentsFilter(_ input: String) -> CALayerContentsFilter {
	return CALayerContentsFilter(rawValue: input)
}
