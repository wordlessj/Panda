//
//  CAShapeLayer.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import QuartzCore

extension PandaChain where Object: CAShapeLayer {
    @discardableResult
    public func path(_ value: CGPath?) -> PandaChain {
        object.path = value
        return self
    }

    @discardableResult
    public func fillColor(_ value: CGColor?) -> PandaChain {
        object.fillColor = value
        return self
    }

    @discardableResult
    public func fillRule(_ value: String) -> PandaChain {
        object.fillRule = convertToCAShapeLayerFillRule(value)
        return self
    }

    @discardableResult
    public func strokeColor(_ value: CGColor?) -> PandaChain {
        object.strokeColor = value
        return self
    }

    @discardableResult
    public func strokeStart(_ value: CGFloat) -> PandaChain {
        object.strokeStart = value
        return self
    }

    @discardableResult
    public func strokeEnd(_ value: CGFloat) -> PandaChain {
        object.strokeEnd = value
        return self
    }

    @discardableResult
    public func lineWidth(_ value: CGFloat) -> PandaChain {
        object.lineWidth = value
        return self
    }

    @discardableResult
    public func miterLimit(_ value: CGFloat) -> PandaChain {
        object.miterLimit = value
        return self
    }

    @discardableResult
    public func lineCap(_ value: String) -> PandaChain {
        object.lineCap = convertToCAShapeLayerLineCap(value)
        return self
    }

    @discardableResult
    public func lineJoin(_ value: String) -> PandaChain {
        object.lineJoin = convertToCAShapeLayerLineJoin(value)
        return self
    }

    @discardableResult
    public func lineDashPhase(_ value: CGFloat) -> PandaChain {
        object.lineDashPhase = value
        return self
    }

    @discardableResult
    public func lineDashPattern(_ value: [NSNumber]?) -> PandaChain {
        object.lineDashPattern = value
        return self
    }
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToCAShapeLayerFillRule(_ input: String) -> CAShapeLayerFillRule {
	return CAShapeLayerFillRule(rawValue: input)
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToCAShapeLayerLineCap(_ input: String) -> CAShapeLayerLineCap {
	return CAShapeLayerLineCap(rawValue: input)
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToCAShapeLayerLineJoin(_ input: String) -> CAShapeLayerLineJoin {
	return CAShapeLayerLineJoin(rawValue: input)
}
