//
//  UIBarItem.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIBarItem {
    @discardableResult
    public func isEnabled(_ value: Bool) -> PandaChain {
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

    @discardableResult
    public func titleTextAttributes(_ attributes: [NSAttributedString.Key : Any]?, for state: UIControl.State) -> PandaChain {
        object.setTitleTextAttributes(attributes, for: state)
        return self
    }

    @discardableResult
    public func titleTextAttributes(
        _ normal: [NSAttributedString.Key : Any],
        highlighted: [NSAttributedString.Key : Any]? = nil,
        selected: [NSAttributedString.Key : Any]? = nil,
        disabled: [NSAttributedString.Key : Any]? = nil
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
