//
//  UIDatePicker.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIDatePicker {
    @discardableResult
    public func datePickerMode(_ value: UIDatePicker.Mode) -> PandaChain {
        object.datePickerMode = value
        return self
    }

    @discardableResult
    public func locale(_ value: Locale?) -> PandaChain {
        object.locale = value
        return self
    }

    @discardableResult
    public func calendar(_ value: Calendar!) -> PandaChain {
        object.calendar = value
        return self
    }

    @discardableResult
    public func timeZone(_ value: TimeZone?) -> PandaChain {
        object.timeZone = value
        return self
    }

    @discardableResult
    public func date(_ value: Date) -> PandaChain {
        object.date = value
        return self
    }

    @discardableResult
    public func minimumDate(_ value: Date?) -> PandaChain {
        object.minimumDate = value
        return self
    }

    @discardableResult
    public func maximumDate(_ value: Date?) -> PandaChain {
        object.maximumDate = value
        return self
    }

    @discardableResult
    public func countDownDuration(_ value: TimeInterval) -> PandaChain {
        object.countDownDuration = value
        return self
    }

    @discardableResult
    public func minuteInterval(_ value: Int) -> PandaChain {
        object.minuteInterval = value
        return self
    }

    @discardableResult
    public func date(_ date: Date, animated: Bool) -> PandaChain {
        object.setDate(date, animated: animated)
        return self
    }
}
