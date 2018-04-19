//
//  UIDatePicker.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension Element where Object: UIDatePicker {
    /// `datePickerMode`
    @discardableResult
    public func mode(_ value: UIDatePickerMode) -> Self {
        return addAttributes(key: "datePickerMode", value: value) {
            $0.datePickerMode = value
        }
    }

    @available(*, deprecated, renamed: "mode()")
    @discardableResult
    public func datePickerMode(_ value: UIDatePickerMode) -> Self {
        return addAttributes(key: "datePickerMode", value: value) {
            $0.datePickerMode = value
        }
    }

    @discardableResult
    public func locale(_ value: Locale?) -> Self {
        return addAttributes(key: "locale", value: value) {
            $0.locale = value
        }
    }

    @discardableResult
    public func calendar(_ value: Calendar?) -> Self {
        return addAttributes(key: "calendar", value: value) {
            $0.calendar = value
        }
    }

    @discardableResult
    public func timeZone(_ value: TimeZone?) -> Self {
        return addAttributes(key: "timeZone", value: value) {
            $0.timeZone = value
        }
    }

    @discardableResult
    public func date(_ value: Date) -> Self {
        return addAttributes(key: "date", value: value) {
            $0.date = value
        }
    }

    /// `minimumDate`
    @discardableResult
    public func minDate(_ value: Date?) -> Self {
        return addAttributes(key: "minimumDate", value: value) {
            $0.minimumDate = value
        }
    }

    @available(*, deprecated, renamed: "minDate()")
    @discardableResult
    public func minimumDate(_ value: Date?) -> Self {
        return addAttributes(key: "minimumDate", value: value) {
            $0.minimumDate = value
        }
    }

    /// `maximumDate`
    @discardableResult
    public func maxDate(_ value: Date?) -> Self {
        return addAttributes(key: "maximumDate", value: value) {
            $0.maximumDate = value
        }
    }

    @available(*, deprecated, renamed: "maxDate()")
    @discardableResult
    public func maximumDate(_ value: Date?) -> Self {
        return addAttributes(key: "maximumDate", value: value) {
            $0.maximumDate = value
        }
    }

    @discardableResult
    public func countDownDuration(_ value: TimeInterval) -> Self {
        return addAttributes(key: "countDownDuration", value: value) {
            $0.countDownDuration = value
        }
    }

    @discardableResult
    public func minuteInterval(_ value: Int) -> Self {
        return addAttributes(key: "minuteInterval", value: value) {
            $0.minuteInterval = value
        }
    }
}
