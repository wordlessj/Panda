//
//  UISearchBar.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UISearchBar {
    /// `barStyle`
    @discardableResult
    public func style(_ value: UIBarStyle) -> Self {
        return addAttributes(key: "barStyle", value: value) {
            $0.barStyle = value
        }
    }

    @available(*, deprecated, renamed: "style()")
    @discardableResult
    public func barStyle(_ value: UIBarStyle) -> Self {
        return addAttributes(key: "barStyle", value: value) {
            $0.barStyle = value
        }
    }

    @discardableResult
    public func delegate(_ value: UISearchBarDelegate?) -> Self {
        return addAttributes(key: "delegate", value: value) {
            $0.delegate = value
        }
    }

    @discardableResult
    public func text(_ value: String?) -> Self {
        return addAttributes(key: "text", value: value) {
            $0.text = value
        }
    }

    @discardableResult
    public func prompt(_ value: String?) -> Self {
        return addAttributes(key: "prompt", value: value) {
            $0.prompt = value
        }
    }

    @discardableResult
    public func placeholder(_ value: String?) -> Self {
        return addAttributes(key: "placeholder", value: value) {
            $0.placeholder = value
        }
    }

    @discardableResult
    public func showsBookmarkButton(_ value: Bool) -> Self {
        return addAttributes(key: "showsBookmarkButton", value: value) {
            $0.showsBookmarkButton = value
        }
    }

    @discardableResult
    public func showsCancelButton(_ value: Bool) -> Self {
        return addAttributes(key: "showsCancelButton", value: value) {
            $0.showsCancelButton = value
        }
    }

    @discardableResult
    public func showsSearchResultsButton(_ value: Bool) -> Self {
        return addAttributes(key: "showsSearchResultsButton", value: value) {
            $0.showsSearchResultsButton = value
        }
    }

    @discardableResult
    public func searchResultsButtonSelected(_ value: Bool) -> Self {
        return addAttributes(key: "isSearchResultsButtonSelected", value: value) {
            $0.isSearchResultsButtonSelected = value
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

    /// `barTintColor`
    @discardableResult
    public func barTint(_ value: UIColor?) -> Self {
        return addAttributes(key: "barTintColor", value: value) {
            $0.barTintColor = value
        }
    }

    @available(*, deprecated, renamed: "barTint()")
    @discardableResult
    public func barTintColor(_ value: UIColor?) -> Self {
        return addAttributes(key: "barTintColor", value: value) {
            $0.barTintColor = value
        }
    }

    /// `searchBarStyle`
    @discardableResult
    public func style(_ value: UISearchBarStyle) -> Self {
        return addAttributes(key: "searchBarStyle", value: value) {
            $0.searchBarStyle = value
        }
    }

    @available(*, deprecated, renamed: "style()")
    @discardableResult
    public func searchBarStyle(_ value: UISearchBarStyle) -> Self {
        return addAttributes(key: "searchBarStyle", value: value) {
            $0.searchBarStyle = value
        }
    }

    @discardableResult
    public func translucent(_ value: Bool) -> Self {
        return addAttributes(key: "isTranslucent", value: value) {
            $0.isTranslucent = value
        }
    }

    @discardableResult
    public func scopeButtonTitles(_ value: [String]?) -> Self {
        return addAttributes(key: "scopeButtonTitles", value: value) {
            $0.scopeButtonTitles = value
        }
    }

    @discardableResult
    public func selectedScopeButtonIndex(_ value: Int) -> Self {
        return addAttributes(key: "selectedScopeButtonIndex", value: value) {
            $0.selectedScopeButtonIndex = value
        }
    }

    @discardableResult
    public func showsScopeBar(_ value: Bool) -> Self {
        return addAttributes(key: "showsScopeBar", value: value) {
            $0.showsScopeBar = value
        }
    }

    @discardableResult
    public func inputAccessoryView(_ value: UIView?) -> Self {
        return addAttributes(key: "inputAccessoryView", value: value) {
            $0.inputAccessoryView = value
        }
    }

    /// `backgroundImage`
    @discardableResult
    public func background(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImage", value: value) {
            $0.backgroundImage = value
        }
    }

    @available(*, deprecated, renamed: "background()")
    @discardableResult
    public func backgroundImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "backgroundImage", value: value) {
            $0.backgroundImage = value
        }
    }

    /// `scopeBarBackgroundImage`
    @discardableResult
    public func scopeBarBackground(_ value: UIImage?) -> Self {
        return addAttributes(key: "scopeBarBackgroundImage", value: value) {
            $0.scopeBarBackgroundImage = value
        }
    }

    @available(*, deprecated, renamed: "scopeBarBackground()")
    @discardableResult
    public func scopeBarBackgroundImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "scopeBarBackgroundImage", value: value) {
            $0.scopeBarBackgroundImage = value
        }
    }

    /// `searchFieldBackgroundPositionAdjustment`
    @discardableResult
    public func searchFieldBackgroundPositionAdjust(_ value: UIOffset) -> Self {
        return addAttributes(key: "searchFieldBackgroundPositionAdjustment", value: value) {
            $0.searchFieldBackgroundPositionAdjustment = value
        }
    }

    @available(*, deprecated, renamed: "searchFieldBackgroundPositionAdjust()")
    @discardableResult
    public func searchFieldBackgroundPositionAdjustment(_ value: UIOffset) -> Self {
        return addAttributes(key: "searchFieldBackgroundPositionAdjustment", value: value) {
            $0.searchFieldBackgroundPositionAdjustment = value
        }
    }

    /// `searchTextPositionAdjustment`
    @discardableResult
    public func searchTextPositionAdjust(_ value: UIOffset) -> Self {
        return addAttributes(key: "searchTextPositionAdjustment", value: value) {
            $0.searchTextPositionAdjustment = value
        }
    }

    @available(*, deprecated, renamed: "searchTextPositionAdjust()")
    @discardableResult
    public func searchTextPositionAdjustment(_ value: UIOffset) -> Self {
        return addAttributes(key: "searchTextPositionAdjustment", value: value) {
            $0.searchTextPositionAdjustment = value
        }
    }

    @discardableResult
    public func autocapitalizationType(_ value: UITextAutocapitalizationType) -> Self {
        return addAttributes(key: "autocapitalizationType", value: value) {
            $0.autocapitalizationType = value
        }
    }

    @discardableResult
    public func autocorrectionType(_ value: UITextAutocorrectionType) -> Self {
        return addAttributes(key: "autocorrectionType", value: value) {
            $0.autocorrectionType = value
        }
    }

    @discardableResult
    public func spellCheckingType(_ value: UITextSpellCheckingType) -> Self {
        return addAttributes(key: "spellCheckingType", value: value) {
            $0.spellCheckingType = value
        }
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func smartQuotesType(_ value: UITextSmartQuotesType) -> Self {
        return addAttributes(key: "smartQuotesType", value: value) {
            $0.smartQuotesType = value
        }
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func smartDashesType(_ value: UITextSmartDashesType) -> Self {
        return addAttributes(key: "smartDashesType", value: value) {
            $0.smartDashesType = value
        }
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func smartInsertDeleteType(_ value: UITextSmartInsertDeleteType) -> Self {
        return addAttributes(key: "smartInsertDeleteType", value: value) {
            $0.smartInsertDeleteType = value
        }
    }

    @discardableResult
    public func keyboardType(_ value: UIKeyboardType) -> Self {
        return addAttributes(key: "keyboardType", value: value) {
            $0.keyboardType = value
        }
    }

    @discardableResult
    public func keyboardAppearance(_ value: UIKeyboardAppearance) -> Self {
        return addAttributes(key: "keyboardAppearance", value: value) {
            $0.keyboardAppearance = value
        }
    }

    @discardableResult
    public func returnKeyType(_ value: UIReturnKeyType) -> Self {
        return addAttributes(key: "returnKeyType", value: value) {
            $0.returnKeyType = value
        }
    }

    @discardableResult
    public func enablesReturnKeyAutomatically(_ value: Bool) -> Self {
        return addAttributes(key: "enablesReturnKeyAutomatically", value: value) {
            $0.enablesReturnKeyAutomatically = value
        }
    }

    @discardableResult
    public func secureTextEntry(_ value: Bool) -> Self {
        return addAttributes(key: "isSecureTextEntry", value: value) {
            $0.isSecureTextEntry = value
        }
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func textContentType(_ value: UITextContentType) -> Self {
        return addAttributes(key: "textContentType", value: value) {
            $0.textContentType = value
        }
    }

    /// `searchFieldBackgroundImage`
    @discardableResult
    public func searchFieldBackground(_ value: UIImage?) -> Self {
        return addAttributes(key: "searchFieldBackgroundImageNormal", value: value) {
            $0.setSearchFieldBackgroundImage(value, for: .normal)
        }
    }

    @available(*, deprecated, renamed: "searchFieldBackground()")
    @discardableResult
    public func searchFieldBackgroundImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "searchFieldBackgroundImageNormal", value: value) {
            $0.setSearchFieldBackgroundImage(value, for: .normal)
        }
    }

    /// `searchFieldBackgroundImageHighlighted`
    @discardableResult
    public func searchFieldBackgroundHighlighted(_ value: UIImage?) -> Self {
        return addAttributes(key: "searchFieldBackgroundImageHighlighted", value: value) {
            $0.setSearchFieldBackgroundImage(value, for: .highlighted)
        }
    }

    @available(*, deprecated, renamed: "searchFieldBackgroundHighlighted()")
    @discardableResult
    public func searchFieldBackgroundImageHighlighted(_ value: UIImage?) -> Self {
        return addAttributes(key: "searchFieldBackgroundImageHighlighted", value: value) {
            $0.setSearchFieldBackgroundImage(value, for: .highlighted)
        }
    }

    /// `searchFieldBackgroundImageSelected`
    @discardableResult
    public func searchFieldBackgroundSelected(_ value: UIImage?) -> Self {
        return addAttributes(key: "searchFieldBackgroundImageSelected", value: value) {
            $0.setSearchFieldBackgroundImage(value, for: .selected)
        }
    }

    @available(*, deprecated, renamed: "searchFieldBackgroundSelected()")
    @discardableResult
    public func searchFieldBackgroundImageSelected(_ value: UIImage?) -> Self {
        return addAttributes(key: "searchFieldBackgroundImageSelected", value: value) {
            $0.setSearchFieldBackgroundImage(value, for: .selected)
        }
    }

    /// `searchFieldBackgroundImageDisabled`
    @discardableResult
    public func searchFieldBackgroundDisabled(_ value: UIImage?) -> Self {
        return addAttributes(key: "searchFieldBackgroundImageDisabled", value: value) {
            $0.setSearchFieldBackgroundImage(value, for: .disabled)
        }
    }

    @available(*, deprecated, renamed: "searchFieldBackgroundDisabled()")
    @discardableResult
    public func searchFieldBackgroundImageDisabled(_ value: UIImage?) -> Self {
        return addAttributes(key: "searchFieldBackgroundImageDisabled", value: value) {
            $0.setSearchFieldBackgroundImage(value, for: .disabled)
        }
    }

    /// `scopeBarButtonBackgroundImage`
    @discardableResult
    public func scopeBarButtonBackground(_ value: UIImage?) -> Self {
        return addAttributes(key: "scopeBarButtonBackgroundImageNormal", value: value) {
            $0.setScopeBarButtonBackgroundImage(value, for: .normal)
        }
    }

    @available(*, deprecated, renamed: "scopeBarButtonBackground()")
    @discardableResult
    public func scopeBarButtonBackgroundImage(_ value: UIImage?) -> Self {
        return addAttributes(key: "scopeBarButtonBackgroundImageNormal", value: value) {
            $0.setScopeBarButtonBackgroundImage(value, for: .normal)
        }
    }

    /// `scopeBarButtonBackgroundImageHighlighted`
    @discardableResult
    public func scopeBarButtonBackgroundHighlighted(_ value: UIImage?) -> Self {
        return addAttributes(key: "scopeBarButtonBackgroundImageHighlighted", value: value) {
            $0.setScopeBarButtonBackgroundImage(value, for: .highlighted)
        }
    }

    @available(*, deprecated, renamed: "scopeBarButtonBackgroundHighlighted()")
    @discardableResult
    public func scopeBarButtonBackgroundImageHighlighted(_ value: UIImage?) -> Self {
        return addAttributes(key: "scopeBarButtonBackgroundImageHighlighted", value: value) {
            $0.setScopeBarButtonBackgroundImage(value, for: .highlighted)
        }
    }

    /// `scopeBarButtonBackgroundImageSelected`
    @discardableResult
    public func scopeBarButtonBackgroundSelected(_ value: UIImage?) -> Self {
        return addAttributes(key: "scopeBarButtonBackgroundImageSelected", value: value) {
            $0.setScopeBarButtonBackgroundImage(value, for: .selected)
        }
    }

    @available(*, deprecated, renamed: "scopeBarButtonBackgroundSelected()")
    @discardableResult
    public func scopeBarButtonBackgroundImageSelected(_ value: UIImage?) -> Self {
        return addAttributes(key: "scopeBarButtonBackgroundImageSelected", value: value) {
            $0.setScopeBarButtonBackgroundImage(value, for: .selected)
        }
    }

    /// `scopeBarButtonBackgroundImageDisabled`
    @discardableResult
    public func scopeBarButtonBackgroundDisabled(_ value: UIImage?) -> Self {
        return addAttributes(key: "scopeBarButtonBackgroundImageDisabled", value: value) {
            $0.setScopeBarButtonBackgroundImage(value, for: .disabled)
        }
    }

    @available(*, deprecated, renamed: "scopeBarButtonBackgroundDisabled()")
    @discardableResult
    public func scopeBarButtonBackgroundImageDisabled(_ value: UIImage?) -> Self {
        return addAttributes(key: "scopeBarButtonBackgroundImageDisabled", value: value) {
            $0.setScopeBarButtonBackgroundImage(value, for: .disabled)
        }
    }

    /// `scopeBarButtonTitleTextAttributes`
    @discardableResult
    public func scopeBarButtonTitleAttributes(_ value: [String: Any]?) -> Self {
        return addAttributes(key: "scopeBarButtonTitleTextAttributesNormal", value: value) {
            $0.setScopeBarButtonTitleTextAttributes(value, for: .normal)
        }
    }

    @available(*, deprecated, renamed: "scopeBarButtonTitleAttributes()")
    @discardableResult
    public func scopeBarButtonTitleTextAttributes(_ value: [String: Any]?) -> Self {
        return addAttributes(key: "scopeBarButtonTitleTextAttributesNormal", value: value) {
            $0.setScopeBarButtonTitleTextAttributes(value, for: .normal)
        }
    }

    /// `scopeBarButtonTitleTextAttributesHighlighted`
    @discardableResult
    public func scopeBarButtonTitleAttributesHighlighted(_ value: [String: Any]?) -> Self {
        return addAttributes(key: "scopeBarButtonTitleTextAttributesHighlighted", value: value) {
            $0.setScopeBarButtonTitleTextAttributes(value, for: .highlighted)
        }
    }

    @available(*, deprecated, renamed: "scopeBarButtonTitleAttributesHighlighted()")
    @discardableResult
    public func scopeBarButtonTitleTextAttributesHighlighted(_ value: [String: Any]?) -> Self {
        return addAttributes(key: "scopeBarButtonTitleTextAttributesHighlighted", value: value) {
            $0.setScopeBarButtonTitleTextAttributes(value, for: .highlighted)
        }
    }

    /// `scopeBarButtonTitleTextAttributesSelected`
    @discardableResult
    public func scopeBarButtonTitleAttributesSelected(_ value: [String: Any]?) -> Self {
        return addAttributes(key: "scopeBarButtonTitleTextAttributesSelected", value: value) {
            $0.setScopeBarButtonTitleTextAttributes(value, for: .selected)
        }
    }

    @available(*, deprecated, renamed: "scopeBarButtonTitleAttributesSelected()")
    @discardableResult
    public func scopeBarButtonTitleTextAttributesSelected(_ value: [String: Any]?) -> Self {
        return addAttributes(key: "scopeBarButtonTitleTextAttributesSelected", value: value) {
            $0.setScopeBarButtonTitleTextAttributes(value, for: .selected)
        }
    }

    /// `scopeBarButtonTitleTextAttributesDisabled`
    @discardableResult
    public func scopeBarButtonTitleAttributesDisabled(_ value: [String: Any]?) -> Self {
        return addAttributes(key: "scopeBarButtonTitleTextAttributesDisabled", value: value) {
            $0.setScopeBarButtonTitleTextAttributes(value, for: .disabled)
        }
    }

    @available(*, deprecated, renamed: "scopeBarButtonTitleAttributesDisabled()")
    @discardableResult
    public func scopeBarButtonTitleTextAttributesDisabled(_ value: [String: Any]?) -> Self {
        return addAttributes(key: "scopeBarButtonTitleTextAttributesDisabled", value: value) {
            $0.setScopeBarButtonTitleTextAttributes(value, for: .disabled)
        }
    }
}
