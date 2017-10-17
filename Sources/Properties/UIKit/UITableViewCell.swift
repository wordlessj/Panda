//
//  UITableViewCell.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UITableViewCell {
    /// `backgroundView`
    @discardableResult
    public func background(_ value: UIViewConvertible?) -> PandaChain {
        object.backgroundView = unbox(value)
        return self
    }

    @available(*, deprecated, renamed: "background()")
    @discardableResult
    public func backgroundView(_ value: UIViewConvertible?) -> PandaChain {
        object.backgroundView = unbox(value)
        return self
    }

    /// `selectedBackgroundView`
    @discardableResult
    public func selectedBackground(_ value: UIViewConvertible?) -> PandaChain {
        object.selectedBackgroundView = unbox(value)
        return self
    }

    @available(*, deprecated, renamed: "selectedBackground()")
    @discardableResult
    public func selectedBackgroundView(_ value: UIViewConvertible?) -> PandaChain {
        object.selectedBackgroundView = unbox(value)
        return self
    }

    /// `multipleSelectionBackgroundView`
    @discardableResult
    public func multipleSelectionBackground(_ value: UIViewConvertible?) -> PandaChain {
        object.multipleSelectionBackgroundView = unbox(value)
        return self
    }

    @available(*, deprecated, renamed: "multipleSelectionBackground()")
    @discardableResult
    public func multipleSelectionBackgroundView(_ value: UIViewConvertible?) -> PandaChain {
        object.multipleSelectionBackgroundView = unbox(value)
        return self
    }

    @discardableResult
    public func selectionStyle(_ value: UITableViewCellSelectionStyle) -> PandaChain {
        object.selectionStyle = value
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
    public func accessoryView(_ value: UIViewConvertible?) -> PandaChain {
        object.accessoryView = unbox(value)
        return self
    }

    @discardableResult
    public func editingAccessoryType(_ value: UITableViewCellAccessoryType) -> PandaChain {
        object.editingAccessoryType = value
        return self
    }

    @discardableResult
    public func editingAccessoryView(_ value: UIViewConvertible?) -> PandaChain {
        object.editingAccessoryView = unbox(value)
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
    public func editing(_ value: Bool) -> PandaChain {
        object.isEditing = value
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    public func focusStyle(_ value: UITableViewCellFocusStyle) -> PandaChain {
        object.focusStyle = value
        return self
    }

    /// `userInteractionEnabledWhileDragging`
    @available(iOS 11.0, *)
    @discardableResult
    public func interactableWhileDragging(_ value: Bool) -> PandaChain {
        object.userInteractionEnabledWhileDragging = value
        return self
    }

    @available(*, deprecated, renamed: "interactableWhileDragging()")
    @available(iOS 11.0, *)
    @discardableResult
    public func userInteractionEnabledWhileDragging(_ value: Bool) -> PandaChain {
        object.userInteractionEnabledWhileDragging = value
        return self
    }

    @discardableResult
    public func selected(_ selected: Bool, animated: Bool) -> PandaChain {
        object.setSelected(selected, animated: animated)
        return self
    }

    @discardableResult
    public func highlighted(_ highlighted: Bool, animated: Bool) -> PandaChain {
        object.setHighlighted(highlighted, animated: animated)
        return self
    }

    @discardableResult
    public func editing(_ editing: Bool, animated: Bool) -> PandaChain {
        object.setEditing(editing, animated: animated)
        return self
    }
}
