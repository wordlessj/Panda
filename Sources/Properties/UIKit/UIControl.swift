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
    public func verticalAlignment(_ value: UIControlContentVerticalAlignment) -> PandaChain {
        object.contentVerticalAlignment = value
        return self
    }

    @available(*, deprecated, renamed: "verticalAlignment()")
    @discardableResult
    public func contentVerticalAlignment(_ value: UIControlContentVerticalAlignment) -> PandaChain {
        object.contentVerticalAlignment = value
        return self
    }

    /// `contentHorizontalAlignment`
    @discardableResult
    public func horizontalAlignment(_ value: UIControlContentHorizontalAlignment) -> PandaChain {
        object.contentHorizontalAlignment = value
        return self
    }

    @available(*, deprecated, renamed: "horizontalAlignment()")
    @discardableResult
    public func contentHorizontalAlignment(_ value: UIControlContentHorizontalAlignment) -> PandaChain {
        object.contentHorizontalAlignment = value
        return self
    }
}
