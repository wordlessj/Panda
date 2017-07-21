//
//  UIControl.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIControl {
    @discardableResult
    public func isEnabled(_ value: Bool) -> PandaChain {
        object.isEnabled = value
        return self
    }

    @discardableResult
    public func isSelected(_ value: Bool) -> PandaChain {
        object.isSelected = value
        return self
    }

    @discardableResult
    public func isHighlighted(_ value: Bool) -> PandaChain {
        object.isHighlighted = value
        return self
    }

    @discardableResult
    public func contentVerticalAlignment(_ value: UIControlContentVerticalAlignment) -> PandaChain {
        object.contentVerticalAlignment = value
        return self
    }

    @discardableResult
    public func contentHorizontalAlignment(_ value: UIControlContentHorizontalAlignment) -> PandaChain {
        object.contentHorizontalAlignment = value
        return self
    }
}
