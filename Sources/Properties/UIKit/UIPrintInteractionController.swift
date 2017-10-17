//
//  UIPrintInteractionController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIPrintInteractionController {
    @discardableResult
    public func printInfo(_ value: UIPrintInfoConvertible?) -> PandaChain {
        object.printInfo = unbox(value)
        return self
    }

    @discardableResult
    public func delegate(_ value: UIPrintInteractionControllerDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @available(iOS, introduced: 4.2, deprecated: 10.0)
    @discardableResult
    public func showsPageRange(_ value: Bool) -> PandaChain {
        object.showsPageRange = value
        return self
    }

    @discardableResult
    public func showsNumberOfCopies(_ value: Bool) -> PandaChain {
        object.showsNumberOfCopies = value
        return self
    }

    @discardableResult
    public func showsPaperSelectionForLoadedPapers(_ value: Bool) -> PandaChain {
        object.showsPaperSelectionForLoadedPapers = value
        return self
    }

    @discardableResult
    public func printPageRenderer(_ value: UIPrintPageRendererConvertible?) -> PandaChain {
        object.printPageRenderer = unbox(value)
        return self
    }

    @discardableResult
    public func printFormatter(_ value: UIPrintFormatterConvertible?) -> PandaChain {
        object.printFormatter = unbox(value)
        return self
    }

    @discardableResult
    public func printingItem(_ value: Any?) -> PandaChain {
        object.printingItem = value
        return self
    }

    @discardableResult
    public func printingItems(_ value: [Any]?) -> PandaChain {
        object.printingItems = value
        return self
    }
}
