//
//  UITableViewCell.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UITableViewCell {
    /// `backgroundView`
    @discardableResult
    public func background(_ value: UIView?) -> Self {
        return addAttributes(key: "backgroundView", value: value) {
            $0.backgroundView = value
        }
    }

    @available(*, deprecated, renamed: "background()")
    @discardableResult
    public func backgroundView(_ value: UIView?) -> Self {
        return addAttributes(key: "backgroundView", value: value) {
            $0.backgroundView = value
        }
    }

    /// `selectedBackgroundView`
    @discardableResult
    public func selectedBackground(_ value: UIView?) -> Self {
        return addAttributes(key: "selectedBackgroundView", value: value) {
            $0.selectedBackgroundView = value
        }
    }

    @available(*, deprecated, renamed: "selectedBackground()")
    @discardableResult
    public func selectedBackgroundView(_ value: UIView?) -> Self {
        return addAttributes(key: "selectedBackgroundView", value: value) {
            $0.selectedBackgroundView = value
        }
    }

    /// `multipleSelectionBackgroundView`
    @discardableResult
    public func multipleSelectionBackground(_ value: UIView?) -> Self {
        return addAttributes(key: "multipleSelectionBackgroundView", value: value) {
            $0.multipleSelectionBackgroundView = value
        }
    }

    @available(*, deprecated, renamed: "multipleSelectionBackground()")
    @discardableResult
    public func multipleSelectionBackgroundView(_ value: UIView?) -> Self {
        return addAttributes(key: "multipleSelectionBackgroundView", value: value) {
            $0.multipleSelectionBackgroundView = value
        }
    }

    @discardableResult
    public func selectionStyle(_ value: UITableViewCellSelectionStyle) -> Self {
        return addAttributes(key: "selectionStyle", value: value) {
            $0.selectionStyle = value
        }
    }

    @discardableResult
    public func selected(_ value: Bool) -> Self {
        return addAttributes(key: "isSelected", value: value) {
            $0.isSelected = value
        }
    }

    @discardableResult
    public func highlighted(_ value: Bool) -> Self {
        return addAttributes(key: "isHighlighted", value: value) {
            $0.isHighlighted = value
        }
    }

    @discardableResult
    public func showsReorderControl(_ value: Bool) -> Self {
        return addAttributes(key: "showsReorderControl", value: value) {
            $0.showsReorderControl = value
        }
    }

    @discardableResult
    public func shouldIndentWhileEditing(_ value: Bool) -> Self {
        return addAttributes(key: "shouldIndentWhileEditing", value: value) {
            $0.shouldIndentWhileEditing = value
        }
    }

    @discardableResult
    public func accessoryType(_ value: UITableViewCellAccessoryType) -> Self {
        return addAttributes(key: "accessoryType", value: value) {
            $0.accessoryType = value
        }
    }

    @discardableResult
    public func accessoryView(_ value: UIView?) -> Self {
        return addAttributes(key: "accessoryView", value: value) {
            $0.accessoryView = value
        }
    }

    @discardableResult
    public func editingAccessoryType(_ value: UITableViewCellAccessoryType) -> Self {
        return addAttributes(key: "editingAccessoryType", value: value) {
            $0.editingAccessoryType = value
        }
    }

    @discardableResult
    public func editingAccessoryView(_ value: UIView?) -> Self {
        return addAttributes(key: "editingAccessoryView", value: value) {
            $0.editingAccessoryView = value
        }
    }

    @discardableResult
    public func indentationLevel(_ value: Int) -> Self {
        return addAttributes(key: "indentationLevel", value: value) {
            $0.indentationLevel = value
        }
    }

    @discardableResult
    public func indentationWidth(_ value: CGFloat) -> Self {
        return addAttributes(key: "indentationWidth", value: value) {
            $0.indentationWidth = value
        }
    }

    @discardableResult
    public func separatorInset(_ value: UIEdgeInsets) -> Self {
        return addAttributes(key: "separatorInset", value: value) {
            $0.separatorInset = value
        }
    }

    @discardableResult
    public func editing(_ value: Bool) -> Self {
        return addAttributes(key: "isEditing", value: value) {
            $0.isEditing = value
        }
    }

    @discardableResult
    public func focusStyle(_ value: UITableViewCellFocusStyle) -> Self {
        return addAttributes(key: "focusStyle", value: value) {
            $0.focusStyle = value
        }
    }

    /// `userInteractionEnabledWhileDragging`
    @available(iOS 11.0, *)
    @discardableResult
    public func interactableWhileDragging(_ value: Bool) -> Self {
        return addAttributes(key: "userInteractionEnabledWhileDragging", value: value) {
            $0.userInteractionEnabledWhileDragging = value
        }
    }

    @available(*, deprecated, renamed: "interactableWhileDragging()")
    @available(iOS 11.0, *)
    @discardableResult
    public func userInteractionEnabledWhileDragging(_ value: Bool) -> Self {
        return addAttributes(key: "userInteractionEnabledWhileDragging", value: value) {
            $0.userInteractionEnabledWhileDragging = value
        }
    }
}
