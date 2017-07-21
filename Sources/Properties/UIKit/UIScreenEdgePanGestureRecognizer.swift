//
//  UIScreenEdgePanGestureRecognizer.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIScreenEdgePanGestureRecognizer {
    @discardableResult
    public func edges(_ value: UIRectEdge) -> PandaChain {
        object.edges = value
        return self
    }
}
