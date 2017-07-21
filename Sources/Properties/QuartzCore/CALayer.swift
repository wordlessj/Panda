//
//  CALayer.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import QuartzCore

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
    public func isHidden(_ value: Bool) -> PandaChain {
        object.isHidden = value
        return self
    }

    @discardableResult
    public func isDoubleSided(_ value: Bool) -> PandaChain {
        object.isDoubleSided = value
        return self
    }

    @discardableResult
    public func isGeometryFlipped(_ value: Bool) -> PandaChain {
        object.isGeometryFlipped = value
        return self
    }

    @discardableResult
    public func sublayers(_ value: [CALayer]?) -> PandaChain {
        object.sublayers = value
        return self
    }

    @discardableResult
    public func sublayerTransform(_ value: CATransform3D) -> PandaChain {
        object.sublayerTransform = value
        return self
    }

    @discardableResult
    public func mask(_ value: CALayer?) -> PandaChain {
        object.mask = value
        return self
    }

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
        object.contentsGravity = value
        return self
    }

    @discardableResult
    public func contentsCenter(_ value: CGRect) -> PandaChain {
        object.contentsCenter = value
        return self
    }

    @discardableResult
    public func minificationFilter(_ value: String) -> PandaChain {
        object.minificationFilter = value
        return self
    }

    @discardableResult
    public func magnificationFilter(_ value: String) -> PandaChain {
        object.magnificationFilter = value
        return self
    }

    @discardableResult
    public func minificationFilterBias(_ value: Float) -> PandaChain {
        object.minificationFilterBias = value
        return self
    }

    @discardableResult
    public func isOpaque(_ value: Bool) -> PandaChain {
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

    @discardableResult
    public func allowsEdgeAntialiasing(_ value: Bool) -> PandaChain {
        object.allowsEdgeAntialiasing = value
        return self
    }

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
}
