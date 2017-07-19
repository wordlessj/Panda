//
//  UICollectionViewFlowLayout.swift
//  Panda
//
//  Created by Javier on 11/2/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import UIKit

extension UICollectionViewFlowLayout {
    @discardableResult
    public func scrollDirection(_ value: UICollectionViewScrollDirection) -> Self {
        scrollDirection = value
        return self
    }

    @discardableResult
    public func minimumLineSpacing(_ value: CGFloat) -> Self {
        minimumLineSpacing = value
        return self
    }

    @discardableResult
    public func minimumInteritemSpacing(_ value: CGFloat) -> Self {
        minimumInteritemSpacing = value
        return self
    }

    @discardableResult
    public func itemSize(_ value: CGSize) -> Self {
        itemSize = value
        return self
    }

    @discardableResult
    public func estimatedItemSize(_ value: CGSize) -> Self {
        estimatedItemSize = value
        return self
    }

    @discardableResult
    public func sectionInset(_ value: UIEdgeInsets) -> Self {
        sectionInset = value
        return self
    }

    @discardableResult
    public func headerReferenceSize(_ value: CGSize) -> Self {
        headerReferenceSize = value
        return self
    }

    @discardableResult
    public func footerReferenceSize(_ value: CGSize) -> Self {
        footerReferenceSize = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func sectionHeadersPinToVisibleBounds(_ value: Bool) -> Self {
        sectionHeadersPinToVisibleBounds = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func sectionFootersPinToVisibleBounds(_ value: Bool) -> Self {
        sectionFootersPinToVisibleBounds = value
        return self
    }
}
