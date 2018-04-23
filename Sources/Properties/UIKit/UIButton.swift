//
//  UIButton.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UIButton {
    /// `contentEdgeInsets`
    @discardableResult
    public func contentInsets(_ value: UIEdgeInsets) -> Self {
        return addAttributes(key: "contentEdgeInsets", value: value) {
            $0.contentEdgeInsets = value
            $0.invalidateLayout()
        }
    }

    @available(*, deprecated, renamed: "contentInsets()")
    @discardableResult
    public func contentEdgeInsets(_ value: UIEdgeInsets) -> Self {
        return addAttributes(key: "contentEdgeInsets", value: value) {
            $0.contentEdgeInsets = value
            $0.invalidateLayout()
        }
    }

    /// `titleEdgeInsets`
    @discardableResult
    public func titleInsets(_ value: UIEdgeInsets) -> Self {
        return addAttributes(key: "titleEdgeInsets", value: value) {
            $0.titleEdgeInsets = value
            $0.invalidateLayout()
        }
    }

    @available(*, deprecated, renamed: "titleInsets()")
    @discardableResult
    public func titleEdgeInsets(_ value: UIEdgeInsets) -> Self {
        return addAttributes(key: "titleEdgeInsets", value: value) {
            $0.titleEdgeInsets = value
            $0.invalidateLayout()
        }
    }

    @discardableResult
    public func reversesTitleShadowWhenHighlighted(_ value: Bool) -> Self {
        return addAttributes(key: "reversesTitleShadowWhenHighlighted", value: value) {
            $0.reversesTitleShadowWhenHighlighted = value
        }
    }

    /// `imageEdgeInsets`
    @discardableResult
    public func imageInsets(_ value: UIEdgeInsets) -> Self {
        return addAttributes(key: "imageEdgeInsets", value: value) {
            $0.imageEdgeInsets = value
            $0.invalidateLayout()
        }
    }

    @available(*, deprecated, renamed: "imageInsets()")
    @discardableResult
    public func imageEdgeInsets(_ value: UIEdgeInsets) -> Self {
        return addAttributes(key: "imageEdgeInsets", value: value) {
            $0.imageEdgeInsets = value
            $0.invalidateLayout()
        }
    }

    @discardableResult
    public func adjustsImageWhenHighlighted(_ value: Bool) -> Self {
        return addAttributes(key: "adjustsImageWhenHighlighted", value: value) {
            $0.adjustsImageWhenHighlighted = value
        }
    }

    @discardableResult
    public func adjustsImageWhenDisabled(_ value: Bool) -> Self {
        return addAttributes(key: "adjustsImageWhenDisabled", value: value) {
            $0.adjustsImageWhenDisabled = value
        }
    }

    @discardableResult
    public func showsTouchWhenHighlighted(_ value: Bool) -> Self {
        return addAttributes(key: "showsTouchWhenHighlighted", value: value) {
            $0.showsTouchWhenHighlighted = value
        }
    }

    /// `tintColor`
    @discardableResult
    public func tint(_ value: UIColor?) -> Self {
        return addAttributes(key: "tintColor", value: value) {
            $0.tintColor = value
        }
    }

    @available(*, deprecated, renamed: "tint()")
    @discardableResult
    public func tintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "tintColor", value: value) {
            $0.tintColor = value
        }
    }

    @discardableResult
    public func title(_ value: String?) -> Self {
        return addAttributes(key: "titleNormal", value: value) {
            $0.setTitle(value, for: .normal)
            $0.invalidateLayout()
        }
    }

    @discardableResult
    public func titleHighlighted(_ value: String?) -> Self {
        return addAttributes(key: "titleHighlighted", value: value) {
            $0.setTitle(value, for: .highlighted)
            $0.invalidateLayout()
        }
    }

    @discardableResult
    public func titleSelected(_ value: String?) -> Self {
        return addAttributes(key: "titleSelected", value: value) {
            $0.setTitle(value, for: .selected)
            $0.invalidateLayout()
        }
    }

    @discardableResult
    public func titleDisabled(_ value: String?) -> Self {
        return addAttributes(key: "titleDisabled", value: value) {
            $0.setTitle(value, for: .disabled)
            $0.invalidateLayout()
        }
    }

    @discardableResult
    public func titleColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "titleColorNormal", value: value) {
            $0.setTitleColor(value, for: .normal)
        }
    }

    @discardableResult
    public func titleColorHighlighted(_ value: UIColor?) -> Self {
        return addAttributes(key: "titleColorHighlighted", value: value) {
            $0.setTitleColor(value, for: .highlighted)
        }
    }

    @discardableResult
    public func titleColorSelected(_ value: UIColor?) -> Self {
        return addAttributes(key: "titleColorSelected", value: value) {
            $0.setTitleColor(value, for: .selected)
        }
    }

    @discardableResult
    public func titleColorDisabled(_ value: UIColor?) -> Self {
        return addAttributes(key: "titleColorDisabled", value: value) {
            $0.setTitleColor(value, for: .disabled)
        }
    }

    @discardableResult
    public func titleShadowColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "titleShadowColorNormal", value: value) {
            $0.setTitleShadowColor(value, for: .normal)
        }
    }

    @discardableResult
    public func titleShadowColorHighlighted(_ value: UIColor?) -> Self {
        return addAttributes(key: "titleShadowColorHighlighted", value: value) {
            $0.setTitleShadowColor(value, for: .highlighted)
        }
    }

    @discardableResult
    public func titleShadowColorSelected(_ value: UIColor?) -> Self {
        return addAttributes(key: "titleShadowColorSelected", value: value) {
            $0.setTitleShadowColor(value, for: .selected)
        }
    }

    @discardableResult
    public func titleShadowColorDisabled(_ value: UIColor?) -> Self {
        return addAttributes(key: "titleShadowColorDisabled", value: value) {
            $0.setTitleShadowColor(value, for: .disabled)
        }
    }

    @discardableResult
    public func image(_ value: UIImage?) -> Self {
        return addAttributes(key: "imageNormal", value: value) {
            $0.setImage(value, for: .normal)
            $0.invalidateLayout()
        }
    }

    @discardableResult
    public func imageHighlighted(_ value: UIImage?) -> Self {
        return addAttributes(key: "imageHighlighted", value: value) {
            $0.setImage(value, for: .highlighted)
            $0.invalidateLayout()
        }
    }

    @discardableResult
    public func imageSelected(_ value: UIImage?) -> Self {
        return addAttributes(key: "imageSelected", value: value) {
            $0.setImage(value, for: .selected)
            $0.invalidateLayout()
        }
    }

    @discardableResult
    public func imageDisabled(_ value: UIImage?) -> Self {
        return addAttributes(key: "imageDisabled", value: value) {
            $0.setImage(value, for: .disabled)
            $0.invalidateLayout()
        }
    }

    /// `backgroundImage`
    @discardableResult
    public func background(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImageNormal", value: value) {
            $0.setBackgroundImage(value, for: .normal)
        }
    }

    @available(*, deprecated, renamed: "background()")
    @discardableResult
    public func backgroundImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImageNormal", value: value) {
            $0.setBackgroundImage(value, for: .normal)
        }
    }

    /// `backgroundImageHighlighted`
    @discardableResult
    public func backgroundHighlighted(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImageHighlighted", value: value) {
            $0.setBackgroundImage(value, for: .highlighted)
        }
    }

    @available(*, deprecated, renamed: "backgroundHighlighted()")
    @discardableResult
    public func backgroundImageHighlighted(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImageHighlighted", value: value) {
            $0.setBackgroundImage(value, for: .highlighted)
        }
    }

    /// `backgroundImageSelected`
    @discardableResult
    public func backgroundSelected(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImageSelected", value: value) {
            $0.setBackgroundImage(value, for: .selected)
        }
    }

    @available(*, deprecated, renamed: "backgroundSelected()")
    @discardableResult
    public func backgroundImageSelected(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImageSelected", value: value) {
            $0.setBackgroundImage(value, for: .selected)
        }
    }

    /// `backgroundImageDisabled`
    @discardableResult
    public func backgroundDisabled(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImageDisabled", value: value) {
            $0.setBackgroundImage(value, for: .disabled)
        }
    }

    @available(*, deprecated, renamed: "backgroundDisabled()")
    @discardableResult
    public func backgroundImageDisabled(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImageDisabled", value: value) {
            $0.setBackgroundImage(value, for: .disabled)
        }
    }

    @discardableResult
    public func attributedTitle(_ value: NSAttributedString?) -> Self {
        return addAttributes(key: "attributedTitleNormal", value: value) {
            $0.setAttributedTitle(value, for: .normal)
            $0.invalidateLayout()
        }
    }

    @discardableResult
    public func attributedTitleHighlighted(_ value: NSAttributedString?) -> Self {
        return addAttributes(key: "attributedTitleHighlighted", value: value) {
            $0.setAttributedTitle(value, for: .highlighted)
            $0.invalidateLayout()
        }
    }

    @discardableResult
    public func attributedTitleSelected(_ value: NSAttributedString?) -> Self {
        return addAttributes(key: "attributedTitleSelected", value: value) {
            $0.setAttributedTitle(value, for: .selected)
            $0.invalidateLayout()
        }
    }

    @discardableResult
    public func attributedTitleDisabled(_ value: NSAttributedString?) -> Self {
        return addAttributes(key: "attributedTitleDisabled", value: value) {
            $0.setAttributedTitle(value, for: .disabled)
            $0.invalidateLayout()
        }
    }
}
