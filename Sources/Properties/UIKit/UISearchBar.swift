//
//  UISearchBar.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UISearchBar {
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

    @available(iOS 11.0, *)
    @discardableResult
    public func smartQuotesType(_ value: UITextSmartQuotesType) -> PandaChain {
        object.smartQuotesType = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func smartDashesType(_ value: UITextSmartDashesType) -> PandaChain {
        object.smartDashesType = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func smartInsertDeleteType(_ value: UITextSmartInsertDeleteType) -> PandaChain {
        object.smartInsertDeleteType = value
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
    public func textContentType(_ value: UITextContentType!) -> PandaChain {
        object.textContentType = value
        return self
    }

    @available(iOS 12.0, *)
    @discardableResult
    public func passwordRules(_ value: UITextInputPasswordRules?) -> PandaChain {
        object.passwordRules = value
        return self
    }

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
    public func tintColor(_ value: UIColor!) -> PandaChain {
        object.tintColor = value
        return self
    }

    @discardableResult
    public func barTintColor(_ value: UIColor?) -> PandaChain {
        object.barTintColor = value
        return self
    }

    @discardableResult
    public func searchBarStyle(_ value: UISearchBar.Style) -> PandaChain {
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
    public func inputAccessoryView(_ value: UIViewConvertible?) -> PandaChain {
        object.inputAccessoryView = unbox(value)
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
    public func searchFieldBackgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State) -> PandaChain {
        object.setSearchFieldBackgroundImage(backgroundImage, for: state)
        return self
    }

    @discardableResult
    public func image(_ iconImage: UIImage?, for icon: UISearchBar.Icon, state: UIControl.State) -> PandaChain {
        object.setImage(iconImage, for: icon, state: state)
        return self
    }

    @discardableResult
    public func scopeBarButtonBackgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State) -> PandaChain {
        object.setScopeBarButtonBackgroundImage(backgroundImage, for: state)
        return self
    }

    @discardableResult
    public func scopeBarButtonDividerImage(_ dividerImage: UIImage?, forLeftSegmentState leftState: UIControl.State, rightSegmentState rightState: UIControl.State) -> PandaChain {
        object.setScopeBarButtonDividerImage(dividerImage, forLeftSegmentState: leftState, rightSegmentState: rightState)
        return self
    }

    @discardableResult
    public func scopeBarButtonTitleTextAttributes(_ attributes: [NSAttributedString.Key : Any]?, for state: UIControl.State) -> PandaChain {
        object.setScopeBarButtonTitleTextAttributes(attributes, for: state)
        return self
    }

    @discardableResult
    public func positionAdjustment(_ adjustment: UIOffset, for icon: UISearchBar.Icon) -> PandaChain {
        object.setPositionAdjustment(adjustment, for: icon)
        return self
    }

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

    @discardableResult
    public func scopeBarButtonTitleTextAttributes(
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
            setter: object.setScopeBarButtonTitleTextAttributes
        )
    }
}
