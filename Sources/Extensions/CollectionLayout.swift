//
//  CollectionLayout.swift
//  Panda
//
//  Copyright (c) 2018 Javier Zhang (https://wordlessj.github.io/)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

extension Element where Object: UICollectionView {
    @discardableResult
    public func layoutScrollDirection(_ value: UICollectionViewScrollDirection) -> Self {
        return addAttributes(key: "layout.scrollDirection", value: value, apply: modifyLayout {
            $0.scrollDirection = value
        })
    }

    @discardableResult
    public func layoutMinimumLineSpacing(_ value: CGFloat) -> Self {
        return addAttributes(key: "layout.minimumLineSpacing", value: value, apply: modifyLayout {
            $0.minimumLineSpacing = value
        })
    }

    @discardableResult
    public func layoutMinimumInteritemSpacing(_ value: CGFloat) -> Self {
        return addAttributes(key: "layout.minimumInteritemSpacing", value: value, apply: modifyLayout {
            $0.minimumInteritemSpacing = value
        })
    }

    @discardableResult
    public func layoutItemSize(_ value: CGSize) -> Self {
        return addAttributes(key: "layout.itemSize", value: value, apply: modifyLayout {
            $0.itemSize = value
        })
    }

    @discardableResult
    public func layoutEstimatedItemSize(_ value: CGSize) -> Self {
        return addAttributes(key: "layout.estimatedItemSize", value: value, apply: modifyLayout {
            $0.estimatedItemSize = value
        })
    }

    @discardableResult
    public func layoutSectionInset(_ value: UIEdgeInsets) -> Self {
        return addAttributes(key: "layout.sectionInset", value: value, apply: modifyLayout {
            $0.sectionInset = value
        })
    }

    @discardableResult
    public func layoutHeaderReferenceSize(_ value: CGSize) -> Self {
        return addAttributes(key: "layout.headerReferenceSize", value: value, apply: modifyLayout {
            $0.headerReferenceSize = value
        })
    }

    @discardableResult
    public func layoutFooterReferenceSize(_ value: CGSize) -> Self {
        return addAttributes(key: "layout.footerReferenceSize", value: value, apply: modifyLayout {
            $0.footerReferenceSize = value
        })
    }

    @discardableResult
    public func layoutSectionHeadersPinToVisibleBounds(_ value: Bool) -> Self {
        return addAttributes(key: "layout.sectionHeadersPinToVisibleBounds", value: value, apply: modifyLayout {
            $0.sectionHeadersPinToVisibleBounds = value
        })
    }

    @discardableResult
    public func layoutSectionFootersPinToVisibleBounds(_ value: Bool) -> Self {
        return addAttributes(key: "layout.sectionFootersPinToVisibleBounds", value: value, apply: modifyLayout {
            $0.sectionFootersPinToVisibleBounds = value
        })
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func layoutSectionInsetReference(_ value: UICollectionViewFlowLayoutSectionInsetReference) -> Self {
        return addAttributes(key: "layout.sectionInsetReference", value: value, apply: modifyLayout {
            $0.sectionInsetReference = value
        })
    }

    private func modifyLayout(_ apply: @escaping (UICollectionViewFlowLayout) -> ()) -> (UICollectionView) -> () {
        return {
            guard let layout = $0.collectionViewLayout as? UICollectionViewFlowLayout else { return }
            apply(layout)
        }
    }
}
