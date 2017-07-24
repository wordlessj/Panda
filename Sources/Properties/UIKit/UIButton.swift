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

    @discardableResult
    public func title(_ title: String?, for state: UIControlState) -> PandaChain {
        object.setTitle(title, for: state)
        return self
    }

    @discardableResult
    public func titleColor(_ color: UIColor?, for state: UIControlState) -> PandaChain {
        object.setTitleColor(color, for: state)
        return self
    }

    @discardableResult
    public func titleShadowColor(_ color: UIColor?, for state: UIControlState) -> PandaChain {
        object.setTitleShadowColor(color, for: state)
        return self
    }

    @discardableResult
    public func image(_ image: UIImage?, for state: UIControlState) -> PandaChain {
        object.setImage(image, for: state)
        return self
    }

    @discardableResult
    public func backgroundImage(_ image: UIImage?, for state: UIControlState) -> PandaChain {
        object.setBackgroundImage(image, for: state)
        return self
    }

    @discardableResult
    public func attributedTitle(_ title: NSAttributedString?, for state: UIControlState) -> PandaChain {
        object.setAttributedTitle(title, for: state)
        return self
    }

    @discardableResult
    public func title(
        _ normal: String,
        highlighted: String? = nil,
        selected: String? = nil,
        disabled: String? = nil
    ) -> PandaChain {
        return forControlState(
            normal: normal,
            highlighted: highlighted,
            selected: selected,
            disabled: disabled,
            setter: object.setTitle
        )
    }

    @discardableResult
    public func titleColor(
        _ normal: UIColor,
        highlighted: UIColor? = nil,
        selected: UIColor? = nil,
        disabled: UIColor? = nil
    ) -> PandaChain {
        return forControlState(
            normal: normal,
            highlighted: highlighted,
            selected: selected,
            disabled: disabled,
            setter: object.setTitleColor
        )
    }

    @discardableResult
    public func titleShadowColor(
        _ normal: UIColor,
        highlighted: UIColor? = nil,
        selected: UIColor? = nil,
        disabled: UIColor? = nil
    ) -> PandaChain {
        return forControlState(
            normal: normal,
            highlighted: highlighted,
            selected: selected,
            disabled: disabled,
            setter: object.setTitleShadowColor
        )
    }

    @discardableResult
    public func image(
        _ normal: UIImage,
        highlighted: UIImage? = nil,
        selected: UIImage? = nil,
        disabled: UIImage? = nil
    ) -> PandaChain {
        return forControlState(
            normal: normal,
            highlighted: highlighted,
            selected: selected,
            disabled: disabled,
            setter: object.setImage
        )
    }

    @discardableResult
    public func backgroundImage(
        _ normal: UIImage,
        highlighted: UIImage? = nil,
        selected: UIImage? = nil,
        disabled: UIImage? = nil
    ) -> PandaChain {
        return forControlState(
            normal: normal,
            highlighted: highlighted,
            selected: selected,
            disabled: disabled,
            setter: object.setBackgroundImage
        )
    }

    @discardableResult
    public func attributedTitle(
        _ normal: NSAttributedString,
        highlighted: NSAttributedString? = nil,
        selected: NSAttributedString? = nil,
        disabled: NSAttributedString? = nil
    ) -> PandaChain {
        return forControlState(
            normal: normal,
            highlighted: highlighted,
            selected: selected,
            disabled: disabled,
            setter: object.setAttributedTitle
        )
    }
}
