//
//  UISearchBar.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UISearchBar {
    @discardableResult
    public func barStyle(_ value: UIBarStyle) -> PandaChain {
        object.barStyle = value
        return self
    }

    @discardableResult
    public func delegate(_ value: UISearchBarDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func text(_ value: String?) -> PandaChain {
        object.text = value
        return self
    }

    @discardableResult
    public func prompt(_ value: String?) -> PandaChain {
        object.prompt = value
        return self
    }

    @discardableResult
    public func placeholder(_ value: String?) -> PandaChain {
        object.placeholder = value
        return self
    }

    @discardableResult
    public func showsBookmarkButton(_ value: Bool) -> PandaChain {
        object.showsBookmarkButton = value
        return self
    }

    @discardableResult
    public func showsCancelButton(_ value: Bool) -> PandaChain {
        object.showsCancelButton = value
        return self
    }

    @discardableResult
    public func showsSearchResultsButton(_ value: Bool) -> PandaChain {
        object.showsSearchResultsButton = value
        return self
    }

    @discardableResult
    public func isSearchResultsButtonSelected(_ value: Bool) -> PandaChain {
        object.isSearchResultsButtonSelected = value
        return self
    }

    @discardableResult
    public func tintColor(_ value: UIColor?) -> PandaChain {
        object.tintColor = value
        return self
    }

    @discardableResult
    public func barTintColor(_ value: UIColor?) -> PandaChain {
        object.barTintColor = value
        return self
    }

    @discardableResult
    public func searchBarStyle(_ value: UISearchBarStyle) -> PandaChain {
        object.searchBarStyle = value
        return self
    }

    @discardableResult
    public func isTranslucent(_ value: Bool) -> PandaChain {
        object.isTranslucent = value
        return self
    }

    @discardableResult
    public func scopeButtonTitles(_ value: [String]?) -> PandaChain {
        object.scopeButtonTitles = value
        return self
    }

    @discardableResult
    public func selectedScopeButtonIndex(_ value: Int) -> PandaChain {
        object.selectedScopeButtonIndex = value
        return self
    }

    @discardableResult
    public func showsScopeBar(_ value: Bool) -> PandaChain {
        object.showsScopeBar = value
        return self
    }

    @discardableResult
    public func inputAccessoryView(_ value: UIView?) -> PandaChain {
        object.inputAccessoryView = value
        return self
    }

    @discardableResult
    public func backgroundImage(_ value: UIImage?) -> PandaChain {
        object.backgroundImage = value
        return self
    }

    @discardableResult
    public func scopeBarBackgroundImage(_ value: UIImage?) -> PandaChain {
        object.scopeBarBackgroundImage = value
        return self
    }

    @discardableResult
    public func searchFieldBackgroundPositionAdjustment(_ value: UIOffset) -> PandaChain {
        object.searchFieldBackgroundPositionAdjustment = value
        return self
    }

    @discardableResult
    public func searchTextPositionAdjustment(_ value: UIOffset) -> PandaChain {
        object.searchTextPositionAdjustment = value
        return self
    }

    @discardableResult
    public func autocapitalizationType(_ value: UITextAutocapitalizationType) -> PandaChain {
        object.autocapitalizationType = value
        return self
    }

    @discardableResult
    public func autocorrectionType(_ value: UITextAutocorrectionType) -> PandaChain {
        object.autocorrectionType = value
        return self
    }

    @discardableResult
    public func spellCheckingType(_ value: UITextSpellCheckingType) -> PandaChain {
        object.spellCheckingType = value
        return self
    }

    @discardableResult
    public func keyboardType(_ value: UIKeyboardType) -> PandaChain {
        object.keyboardType = value
        return self
    }

    @discardableResult
    public func keyboardAppearance(_ value: UIKeyboardAppearance) -> PandaChain {
        object.keyboardAppearance = value
        return self
    }

    @discardableResult
    public func returnKeyType(_ value: UIReturnKeyType) -> PandaChain {
        object.returnKeyType = value
        return self
    }

    @discardableResult
    public func enablesReturnKeyAutomatically(_ value: Bool) -> PandaChain {
        object.enablesReturnKeyAutomatically = value
        return self
    }

    @discardableResult
    public func isSecureTextEntry(_ value: Bool) -> PandaChain {
        object.isSecureTextEntry = value
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func textContentType(_ value: UITextContentType) -> PandaChain {
        object.textContentType = value
        return self
    }

    @discardableResult
    public func showsCancelButton(_ showsCancelButton: Bool, animated: Bool) -> PandaChain {
        object.setShowsCancelButton(showsCancelButton, animated: animated)
        return self
    }

    @discardableResult
    public func backgroundImage(_ backgroundImage: UIImage?, for barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> PandaChain {
        object.setBackgroundImage(backgroundImage, for: barPosition, barMetrics: barMetrics)
        return self
    }

    @discardableResult
    public func searchFieldBackgroundImage(_ backgroundImage: UIImage?, for state: UIControlState) -> PandaChain {
        object.setSearchFieldBackgroundImage(backgroundImage, for: state)
        return self
    }

    @discardableResult
    public func image(_ iconImage: UIImage?, for icon: UISearchBarIcon, state: UIControlState) -> PandaChain {
        object.setImage(iconImage, for: icon, state: state)
        return self
    }

    @discardableResult
    public func scopeBarButtonBackgroundImage(_ backgroundImage: UIImage?, for state: UIControlState) -> PandaChain {
        object.setScopeBarButtonBackgroundImage(backgroundImage, for: state)
        return self
    }

    @discardableResult
    public func scopeBarButtonDividerImage(_ dividerImage: UIImage?, forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState) -> PandaChain {
        object.setScopeBarButtonDividerImage(dividerImage, forLeftSegmentState: leftState, rightSegmentState: rightState)
        return self
    }

    @discardableResult
    public func scopeBarButtonTitleTextAttributes(_ attributes: [String: Any]?, for state: UIControlState) -> PandaChain {
        object.setScopeBarButtonTitleTextAttributes(attributes, for: state)
        return self
    }

    @discardableResult
    public func positionAdjustment(_ adjustment: UIOffset, for icon: UISearchBarIcon) -> PandaChain {
        object.setPositionAdjustment(adjustment, for: icon)
        return self
    }

    @discardableResult
    public func searchFieldBackgroundImage(
        normal: UIImage,
        highlighted: UIImage? = nil,
        selected: UIImage? = nil,
        disabled: UIImage? = nil
    ) -> PandaChain {
        return forControlState(
            normal: normal,
            highlighted: highlighted,
            selected: selected,
            disabled: disabled,
            setter: object.setSearchFieldBackgroundImage
        )
    }

    @discardableResult
    public func scopeBarButtonBackgroundImage(
        normal: UIImage,
        highlighted: UIImage? = nil,
        selected: UIImage? = nil,
        disabled: UIImage? = nil
    ) -> PandaChain {
        return forControlState(
            normal: normal,
            highlighted: highlighted,
            selected: selected,
            disabled: disabled,
            setter: object.setScopeBarButtonBackgroundImage
        )
    }

    @discardableResult
    public func scopeBarButtonTitleTextAttributes(
        normal: [String: Any],
        highlighted: [String: Any]? = nil,
        selected: [String: Any]? = nil,
        disabled: [String: Any]? = nil
    ) -> PandaChain {
        return forControlState(
            normal: normal,
            highlighted: highlighted,
            selected: selected,
            disabled: disabled,
            setter: object.setScopeBarButtonTitleTextAttributes
        )
    }
}
