//
//  UIViewControllerExtensions.swift
//  Panda
//
//  Created by Javier on 10/18/15.
//  Copyright © 2015 Javier. All rights reserved.
//

import UIKit

extension UIViewController {
    public func addChildViewControllerAndView(_ controller: UIViewController, to toView: UIView? = nil) {
        addChildViewController(controller)
        (toView ?? view).addSubview(controller.view)
        controller.didMove(toParentViewController: self)
    }

    public func removeFromParentViewControllerAndView() {
        willMove(toParentViewController: nil)
        view.removeFromSuperview()
        removeFromParentViewController()
    }
}
