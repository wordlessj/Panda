//
//  UIControl.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIControl {
    @discardableResult
    public func enabled(_ value: Bool) -> PandaChain {
        object.isEnabled = value
        return self
    }

    @discardableResult
    public func selected(_ value: Bool) -> PandaChain {
        object.isSelected = value
        return self
    }

    @discardableResult
    public func highlighted(_ value: Bool) -> PandaChain {
        object.isHighlighted = value
        return self
    }

    /// `contentVerticalAlignment`
    @discardableResult
    public func verticalAlign(_ value: UIControl.ContentVerticalAlignment) -> PandaChain {
        object.contentVerticalAlignment = value
        return self
    }

    @available(*, deprecated, renamed: "verticalAlign()")
    @discardableResult
    public func contentVerticalAlignment(_ value: UIControl.ContentVerticalAlignment) -> PandaChain {
        object.contentVerticalAlignment = value
        return self
    }

    /// `contentHorizontalAlignment`
    @discardableResult
    public func horizontalAlign(_ value: UIControl.ContentHorizontalAlignment) -> PandaChain {
        object.contentHorizontalAlignment = value
        return self
    }

    @available(*, deprecated, renamed: "horizontalAlign()")
    @discardableResult
    public func contentHorizontalAlignment(_ value: UIControl.ContentHorizontalAlignment) -> PandaChain {
        object.contentHorizontalAlignment = value
        return self
    }
}
