//
//  UITableViewCell.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UITableViewCell {
    @discardableResult
    public func backgroundView(_ value: UIView?) -> PandaChain {
        object.backgroundView = value
        return self
    }

    @discardableResult
    public func selectedBackgroundView(_ value: UIView?) -> PandaChain {
        object.selectedBackgroundView = value
        return self
    }

    @discardableResult
    public func multipleSelectionBackgroundView(_ value: UIView?) -> PandaChain {
        object.multipleSelectionBackgroundView = value
        return self
    }

    @discardableResult
    public func selectionStyle(_ value: UITableViewCellSelectionStyle) -> PandaChain {
        object.selectionStyle = value
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
    public func showsReorderControl(_ value: Bool) -> PandaChain {
        object.showsReorderControl = value
        return self
    }

    @discardableResult
    public func shouldIndentWhileEditing(_ value: Bool) -> PandaChain {
        object.shouldIndentWhileEditing = value
        return self
    }

    @discardableResult
    public func accessoryType(_ value: UITableViewCellAccessoryType) -> PandaChain {
        object.accessoryType = value
        return self
    }

    @discardableResult
    public func accessoryView(_ value: UIView?) -> PandaChain {
        object.accessoryView = value
        return self
    }

    @discardableResult
    public func editingAccessoryType(_ value: UITableViewCellAccessoryType) -> PandaChain {
        object.editingAccessoryType = value
        return self
    }

    @discardableResult
    public func editingAccessoryView(_ value: UIView?) -> PandaChain {
        object.editingAccessoryView = value
        return self
    }

    @discardableResult
    public func indentationLevel(_ value: Int) -> PandaChain {
        object.indentationLevel = value
        return self
    }

    @discardableResult
    public func indentationWidth(_ value: CGFloat) -> PandaChain {
        object.indentationWidth = value
        return self
    }

    @discardableResult
    public func separatorInset(_ value: UIEdgeInsets) -> PandaChain {
        object.separatorInset = value
        return self
    }

    @discardableResult
    public func isEditing(_ value: Bool) -> PandaChain {
        object.isEditing = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func focusStyle(_ value: UITableViewCellFocusStyle) -> PandaChain {
        object.focusStyle = value
        return self
    }
}
