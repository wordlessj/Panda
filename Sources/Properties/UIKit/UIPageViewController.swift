//
//  UIPageViewController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UIPageViewController {
    @discardableResult
    public func delegate(_ value: UIPageViewControllerDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func dataSource(_ value: UIPageViewControllerDataSource?) -> PandaChain {
        object.dataSource = value
        return self
    }

    @discardableResult
    public func isDoubleSided(_ value: Bool) -> PandaChain {
        object.isDoubleSided = value
        return self
    }
}
