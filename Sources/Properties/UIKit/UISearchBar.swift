//
//  UISearchBar.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UISearchBar {
    /// `barStyle`
    @discardableResult
    public func style(_ value: UIBarStyle) -> PandaChain {
        object.barStyle = value
        return self
    }

    @available(*, deprecated, renamed: "style()")
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
    public func searchResultsButtonSelected(_ value: Bool) -> PandaChain {
        object.isSearchResultsButtonSelected = value
        return self
    }

    /// `tintColor`
    @discardableResult
    public func tint(_ value: UIColor?) -> PandaChain {
        object.tintColor = value
        return self
    }

    @available(*, deprecated, renamed: "tint()")
    @discardableResult
    public func tintColor(_ value: UIColor?) -> PandaChain {
        object.tintColor = value
        return self
    }

    /// `barTintColor`
    @discardableResult
    public func barTint(_ value: UIColor?) -> PandaChain {
        object.barTintColor = value
        return self
    }

    @available(*, deprecated, renamed: "barTint()")
    @discardableResult
    public func barTintColor(_ value: UIColor?) -> PandaChain {
        object.barTintColor = value
        return self
    }

    /// `searchBarStyle`
    @discardableResult
    public func style(_ value: UISearchBarStyle) -> PandaChain {
        object.searchBarStyle = value
        return self
    }

    @available(*, deprecated, renamed: "style()")
    @discardableResult
    public func searchBarStyle(_ value: UISearchBarStyle) -> PandaChain {
        object.searchBarStyle = value
        return self
    }

    @discardableResult
    public func translucent(_ value: Bool) -> PandaChain {
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

    /// `backgroundImage`
    @discardableResult
    public func background(_ value: UIImage?) -> PandaChain {
        object.backgroundImage = value
        return self
    }

    @available(*, deprecated, renamed: "background()")
    @discardableResult
    public func backgroundImage(_ value: UIImage?) -> PandaChain {
        object.backgroundImage = value
        return self
    }

    /// `scopeBarBackgroundImage`
    @discardableResult
    public func scopeBarBackground(_ value: UIImage?) -> PandaChain {
        object.scopeBarBackgroundImage = value
        return self
    }

    @available(*, deprecated, renamed: "scopeBarBackground()")
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
    public func secureTextEntry(_ value: Bool) -> PandaChain {
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

    /// `backgroundImage`
    @discardableResult
    public func background(_ backgroundImage: UIImage?, for barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> PandaChain {
        object.setBackgroundImage(backgroundImage, for: barPosition, barMetrics: barMetrics)
        return self
    }

    @available(*, deprecated, renamed: "background()")
    @discardableResult
    public func backgroundImage(_ backgroundImage: UIImage?, for barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> PandaChain {
        object.setBackgroundImage(backgroundImage, for: barPosition, barMetrics: barMetrics)
        return self
    }

    /// `searchFieldBackgroundImage`
    @discardableResult
    public func searchFieldBackground(_ backgroundImage: UIImage?, for state: UIControlState) -> PandaChain {
        object.setSearchFieldBackgroundImage(backgroundImage, for: state)
        return self
    }

    @available(*, deprecated, renamed: "searchFieldBackground()")
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

    /// `scopeBarButtonBackgroundImage`
    @discardableResult
    public func scopeBarButtonBackground(_ backgroundImage: UIImage?, for state: UIControlState) -> PandaChain {
        object.setScopeBarButtonBackgroundImage(backgroundImage, for: state)
        return self
    }

    @available(*, deprecated, renamed: "scopeBarButtonBackground()")
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

    /// `scopeBarButtonTitleTextAttributes`
    @discardableResult
    public func scopeBarButtonTitleAttributes(_ attributes: [String: Any]?, for state: UIControlState) -> PandaChain {
        object.setScopeBarButtonTitleTextAttributes(attributes, for: state)
        return self
    }

    @available(*, deprecated, renamed: "scopeBarButtonTitleAttributes()")
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

    /// `searchFieldBackgroundImage`
    @discardableResult
    public func searchFieldBackground(
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
            setter: object.setSearchFieldBackgroundImage
        )
    }

    @available(*, deprecated, renamed: "searchFieldBackground()")
    @discardableResult
    public func searchFieldBackgroundImage(
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
            setter: object.setSearchFieldBackgroundImage
        )
    }

    /// `scopeBarButtonBackgroundImage`
    @discardableResult
    public func scopeBarButtonBackground(
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
            setter: object.setScopeBarButtonBackgroundImage
        )
    }

    @available(*, deprecated, renamed: "scopeBarButtonBackground()")
    @discardableResult
    public func scopeBarButtonBackgroundImage(
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
            setter: object.setScopeBarButtonBackgroundImage
        )
    }

    /// `scopeBarButtonTitleTextAttributes`
    @discardableResult
    public func scopeBarButtonTitleAttributes(
        _ normal: [String: Any],
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

    @available(*, deprecated, renamed: "scopeBarButtonTitleAttributes()")
    @discardableResult
    public func scopeBarButtonTitleTextAttributes(
        _ normal: [String: Any],
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
