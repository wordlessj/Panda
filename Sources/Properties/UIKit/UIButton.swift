//
//  UIButton.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIButton {
    @discardableResult
    public func contentEdgeInsets(_ value: UIEdgeInsets) -> PandaChain {
        object.contentEdgeInsets = value
        return self
    }

    @discardableResult
    public func titleEdgeInsets(_ value: UIEdgeInsets) -> PandaChain {
        object.titleEdgeInsets = value
        return self
    }

    @discardableResult
    public func reversesTitleShadowWhenHighlighted(_ value: Bool) -> PandaChain {
        object.reversesTitleShadowWhenHighlighted = value
        return self
    }

    @discardableResult
    public func imageEdgeInsets(_ value: UIEdgeInsets) -> PandaChain {
        object.imageEdgeInsets = value
        return self
    }

    @discardableResult
    public func adjustsImageWhenHighlighted(_ value: Bool) -> PandaChain {
        object.adjustsImageWhenHighlighted = value
        return self
    }

    @discardableResult
    public func adjustsImageWhenDisabled(_ value: Bool) -> PandaChain {
        object.adjustsImageWhenDisabled = value
        return self
    }

    @discardableResult
    public func showsTouchWhenHighlighted(_ value: Bool) -> PandaChain {
        object.showsTouchWhenHighlighted = value
        return self
    }

    @discardableResult
    public func tintColor(_ value: UIColor?) -> PandaChain {
        object.tintColor = value
        return self
    }
}
