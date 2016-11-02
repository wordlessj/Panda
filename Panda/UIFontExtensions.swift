//
//  UIFontExtensions.swift
//  Panda
//
//  Created by Javier on 11/2/16.
//  Copyright © 2016 Javier. All rights reserved.
//

import UIKit

@available(iOS 8.2, *)
extension UIFont {
    public enum Weight {
        case ultraLight, thin, light, regular, medium, semibold, bold, heavy, black
        case custom(CGFloat)

        fileprivate var rawValue: CGFloat {
            switch self {
            case .ultraLight:       return UIFontWeightUltraLight
            case .thin:             return UIFontWeightThin
            case .light:            return UIFontWeightLight
            case .regular:          return UIFontWeightRegular
            case .medium:           return UIFontWeightMedium
            case .semibold:         return UIFontWeightSemibold
            case .bold:             return UIFontWeightBold
            case .heavy:            return UIFontWeightHeavy
            case .black:            return UIFontWeightBlack
            case let .custom(raw):  return raw
            }
        }
    }

    public class func systemFont(ofSize fontSize: CGFloat, weight: Weight) -> UIFont {
        return systemFont(ofSize: fontSize, weight: weight.rawValue)
    }

    @available(iOS 9.0, *)
    public class func monospacedDigitSystemFont(ofSize fontSize: CGFloat, weight: Weight) -> UIFont {
        return monospacedDigitSystemFont(ofSize: fontSize, weight: weight.rawValue)
    }
}
