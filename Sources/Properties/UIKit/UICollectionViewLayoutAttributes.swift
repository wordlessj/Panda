//
//  UICollectionViewLayoutAttributes.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UICollectionViewLayoutAttributes {
    @discardableResult
    public func frame(_ value: CGRect) -> PandaChain {
        object.frame = value
        return self
    }

    @discardableResult
    public func center(_ value: CGPoint) -> PandaChain {
        object.center = value
        return self
    }

    @discardableResult
    public func size(_ value: CGSize) -> PandaChain {
        object.size = value
        return self
    }

    @discardableResult
    public func transform3D(_ value: CATransform3D) -> PandaChain {
        object.transform3D = value
        return self
    }

    @discardableResult
    public func bounds(_ value: CGRect) -> PandaChain {
        object.bounds = value
        return self
    }

    @discardableResult
    public func transform(_ value: CGAffineTransform) -> PandaChain {
        object.transform = value
        return self
    }

    @discardableResult
    public func alpha(_ value: CGFloat) -> PandaChain {
        object.alpha = value
        return self
    }

    @discardableResult
    public func zIndex(_ value: Int) -> PandaChain {
        object.zIndex = value
        return self
    }

    @discardableResult
    public func isHidden(_ value: Bool) -> PandaChain {
        object.isHidden = value
        return self
    }

    @discardableResult
    public func indexPath(_ value: IndexPath) -> PandaChain {
        object.indexPath = value
        return self
    }
}
