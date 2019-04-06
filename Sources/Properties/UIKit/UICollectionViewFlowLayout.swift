//
//  UICollectionViewFlowLayout.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UICollectionViewFlowLayout {
    @discardableResult
    public func minimumLineSpacing(_ value: CGFloat) -> PandaChain {
        object.minimumLineSpacing = value
        return self
    }

    @discardableResult
    public func minimumInteritemSpacing(_ value: CGFloat) -> PandaChain {
        object.minimumInteritemSpacing = value
        return self
    }

    @discardableResult
    public func itemSize(_ value: CGSize) -> PandaChain {
        object.itemSize = value
        return self
    }

    @discardableResult
    public func estimatedItemSize(_ value: CGSize) -> PandaChain {
        object.estimatedItemSize = value
        return self
    }

    @discardableResult
    public func scrollDirection(_ value: UICollectionView.ScrollDirection) -> PandaChain {
        object.scrollDirection = value
        return self
    }

    @discardableResult
    public func headerReferenceSize(_ value: CGSize) -> PandaChain {
        object.headerReferenceSize = value
        return self
    }

    @discardableResult
    public func footerReferenceSize(_ value: CGSize) -> PandaChain {
        object.footerReferenceSize = value
        return self
    }

    @discardableResult
    public func sectionInset(_ value: UIEdgeInsets) -> PandaChain {
        object.sectionInset = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func sectionInsetReference(_ value: UICollectionViewFlowLayout.SectionInsetReference) -> PandaChain {
        object.sectionInsetReference = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func sectionHeadersPinToVisibleBounds(_ value: Bool) -> PandaChain {
        object.sectionHeadersPinToVisibleBounds = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func sectionFootersPinToVisibleBounds(_ value: Bool) -> PandaChain {
        object.sectionFootersPinToVisibleBounds = value
        return self
    }
}
