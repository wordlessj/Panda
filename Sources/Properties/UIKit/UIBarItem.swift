//
//  UIBarItem.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIBarItem {
    @discardableResult
    public func enabled(_ value: Bool) -> PandaChain {
        object.isEnabled = value
        return self
    }

    @discardableResult
    public func title(_ value: String?) -> PandaChain {
        object.title = value
        return self
    }

    @discardableResult
    public func image(_ value: UIImage?) -> PandaChain {
        object.image = value
        return self
    }

    @discardableResult
    public func landscapeImagePhone(_ value: UIImage?) -> PandaChain {
        object.landscapeImagePhone = value
        return self
    }

    /// `largeContentSizeImage`
    @available(iOS 11.0, *)
    @discardableResult
    public func largeImage(_ value: UIImage?) -> PandaChain {
        object.largeContentSizeImage = value
        return self
    }

    @available(*, deprecated, renamed: "largeImage()")
    @available(iOS 11.0, *)
    @discardableResult
    public func largeContentSizeImage(_ value: UIImage?) -> PandaChain {
        object.largeContentSizeImage = value
        return self
    }

    @discardableResult
    public func imageInsets(_ value: UIEdgeInsets) -> PandaChain {
        object.imageInsets = value
        return self
    }

    @discardableResult
    public func landscapeImagePhoneInsets(_ value: UIEdgeInsets) -> PandaChain {
        object.landscapeImagePhoneInsets = value
        return self
    }

    /// `largeContentSizeImageInsets`
    @available(iOS 11.0, *)
    @discardableResult
    public func largeImageInsets(_ value: UIEdgeInsets) -> PandaChain {
        object.largeContentSizeImageInsets = value
        return self
    }

    @available(*, deprecated, renamed: "largeImageInsets()")
    @available(iOS 11.0, *)
    @discardableResult
    public func largeContentSizeImageInsets(_ value: UIEdgeInsets) -> PandaChain {
        object.largeContentSizeImageInsets = value
        return self
    }

    @discardableResult
    public func tag(_ value: Int) -> PandaChain {
        object.tag = value
        return self
    }

    /// `titleTextAttributes`
    @discardableResult
    public func titleAttributes(_ attributes: [NSAttributedStringKey: Any]?, for state: UIControlState) -> PandaChain {
        object.setTitleTextAttributes(attributes, for: state)
        return self
    }

    @available(*, deprecated, renamed: "titleAttributes()")
    @discardableResult
    public func titleTextAttributes(_ attributes: [NSAttributedStringKey: Any]?, for state: UIControlState) -> PandaChain {
        object.setTitleTextAttributes(attributes, for: state)
        return self
    }

    /// `titleTextAttributes`
    @discardableResult
    public func titleAttributes(
        _ normal: [NSAttributedStringKey: Any],
        highlighted: [NSAttributedStringKey: Any]? = nil,
        selected: [NSAttributedStringKey: Any]? = nil,
        disabled: [NSAttributedStringKey: Any]? = nil
    ) -> PandaChain {
        return forControlState(
            normal: normal,
            highlighted: highlighted,
            selected: selected,
            disabled: disabled,
            setter: object.setTitleTextAttributes
        )
    }

    @available(*, deprecated, renamed: "titleAttributes()")
    @discardableResult
    public func titleTextAttributes(
        _ normal: [NSAttributedStringKey: Any],
        highlighted: [NSAttributedStringKey: Any]? = nil,
        selected: [NSAttributedStringKey: Any]? = nil,
        disabled: [NSAttributedStringKey: Any]? = nil
    ) -> PandaChain {
        return forControlState(
            normal: normal,
            highlighted: highlighted,
            selected: selected,
            disabled: disabled,
            setter: object.setTitleTextAttributes
        )
    }
}
