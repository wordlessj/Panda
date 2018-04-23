//
//  Layout.swift
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

extension Element where Object: UIView {
    @discardableResult
    public func includedInLayout(_ value: Bool) -> Self {
        return addAttributes(key: "yoga.isIncludedInLayout", value: value) {
            $0.yoga.isIncludedInLayout = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func layoutEnabled(_ value: Bool) -> Self {
        return addAttributes(key: "yoga.isEnabled", value: value) {
            $0.yoga.isEnabled = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func direction(_ value: YGDirection) -> Self {
        return addAttributes(key: "yoga.direction", value: value) {
            $0.yoga.direction = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func flexDirection(_ value: YGFlexDirection) -> Self {
        return addAttributes(key: "yoga.flexDirection", value: value) {
            $0.yoga.flexDirection = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func justifyContent(_ value: YGJustify) -> Self {
        return addAttributes(key: "yoga.justifyContent", value: value) {
            $0.yoga.justifyContent = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func alignContent(_ value: YGAlign) -> Self {
        return addAttributes(key: "yoga.alignContent", value: value) {
            $0.yoga.alignContent = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func alignItems(_ value: YGAlign) -> Self {
        return addAttributes(key: "yoga.alignItems", value: value) {
            $0.yoga.alignItems = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func alignSelf(_ value: YGAlign) -> Self {
        return addAttributes(key: "yoga.alignSelf", value: value) {
            $0.yoga.alignSelf = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func position(_ value: YGPositionType) -> Self {
        return addAttributes(key: "yoga.position", value: value) {
            $0.yoga.position = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func flexWrap(_ value: YGWrap) -> Self {
        return addAttributes(key: "yoga.flexWrap", value: value) {
            $0.yoga.flexWrap = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func overflow(_ value: YGOverflow) -> Self {
        return addAttributes(key: "yoga.overflow", value: value) {
            $0.yoga.overflow = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func display(_ value: YGDisplay) -> Self {
        return addAttributes(key: "yoga.display", value: value) {
            $0.yoga.display = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func flexGrow(_ value: CGFloat) -> Self {
        return addAttributes(key: "yoga.flexGrow", value: value) {
            $0.yoga.flexGrow = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func flexShrink(_ value: CGFloat) -> Self {
        return addAttributes(key: "yoga.flexShrink", value: value) {
            $0.yoga.flexShrink = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func flexBasis(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.flexBasis", value: value) {
            $0.yoga.flexBasis = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func left(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.left", value: value) {
            $0.yoga.left = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func top(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.top", value: value) {
            $0.yoga.top = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func right(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.right", value: value) {
            $0.yoga.right = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func bottom(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.bottom", value: value) {
            $0.yoga.bottom = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func start(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.start", value: value) {
            $0.yoga.start = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func end(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.end", value: value) {
            $0.yoga.end = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func marginLeft(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.marginLeft", value: value) {
            $0.yoga.marginLeft = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func marginTop(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.marginTop", value: value) {
            $0.yoga.marginTop = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func marginRight(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.marginRight", value: value) {
            $0.yoga.marginRight = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func marginBottom(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.marginBottom", value: value) {
            $0.yoga.marginBottom = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func marginStart(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.marginStart", value: value) {
            $0.yoga.marginStart = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func marginEnd(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.marginEnd", value: value) {
            $0.yoga.marginEnd = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func marginHorizontal(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.marginHorizontal", value: value) {
            $0.yoga.marginHorizontal = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func marginVertical(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.marginVertical", value: value) {
            $0.yoga.marginVertical = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func margin(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.margin", value: value) {
            $0.yoga.margin = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func paddingLeft(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.paddingLeft", value: value) {
            $0.yoga.paddingLeft = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func paddingTop(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.paddingTop", value: value) {
            $0.yoga.paddingTop = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func paddingRight(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.paddingRight", value: value) {
            $0.yoga.paddingRight = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func paddingBottom(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.paddingBottom", value: value) {
            $0.yoga.paddingBottom = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func paddingStart(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.paddingStart", value: value) {
            $0.yoga.paddingStart = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func paddingEnd(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.paddingEnd", value: value) {
            $0.yoga.paddingEnd = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func paddingHorizontal(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.paddingHorizontal", value: value) {
            $0.yoga.paddingHorizontal = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func paddingVertical(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.paddingVertical", value: value) {
            $0.yoga.paddingVertical = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func padding(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.padding", value: value) {
            $0.yoga.padding = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func borderLeftWidth(_ value: CGFloat) -> Self {
        return addAttributes(key: "yoga.borderLeftWidth", value: value) {
            $0.yoga.borderLeftWidth = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func borderTopWidth(_ value: CGFloat) -> Self {
        return addAttributes(key: "yoga.borderTopWidth", value: value) {
            $0.yoga.borderTopWidth = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func borderRightWidth(_ value: CGFloat) -> Self {
        return addAttributes(key: "yoga.borderRightWidth", value: value) {
            $0.yoga.borderRightWidth = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func borderBottomWidth(_ value: CGFloat) -> Self {
        return addAttributes(key: "yoga.borderBottomWidth", value: value) {
            $0.yoga.borderBottomWidth = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func borderStartWidth(_ value: CGFloat) -> Self {
        return addAttributes(key: "yoga.borderStartWidth", value: value) {
            $0.yoga.borderStartWidth = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func borderEndWidth(_ value: CGFloat) -> Self {
        return addAttributes(key: "yoga.borderEndWidth", value: value) {
            $0.yoga.borderEndWidth = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func borderWidth(_ value: CGFloat) -> Self {
        return addAttributes(key: "yoga.borderWidth", value: value) {
            $0.yoga.borderWidth = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func width(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.width", value: value) {
            $0.yoga.width = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func height(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.height", value: value) {
            $0.yoga.height = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func minWidth(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.minWidth", value: value) {
            $0.yoga.minWidth = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func minHeight(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.minHeight", value: value) {
            $0.yoga.minHeight = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func maxWidth(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.maxWidth", value: value) {
            $0.yoga.maxWidth = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func maxHeight(_ value: YGValue) -> Self {
        return addAttributes(key: "yoga.maxHeight", value: value) {
            $0.yoga.maxHeight = value
            $0.setNeedsApplyLayout()
        }
    }

    @discardableResult
    public func aspectRatio(_ value: CGFloat) -> Self {
        return addAttributes(key: "yoga.aspectRatio", value: value) {
            $0.yoga.aspectRatio = value
            $0.setNeedsApplyLayout()
        }
    }
}
