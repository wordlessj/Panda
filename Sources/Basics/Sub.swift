//
//  Sub.swift
//  Panda
//
//  Copyright (c) 2017 Javier Zhang (https://wordlessj.github.io/)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import UIKit

extension PandaChain {
    fileprivate func sub<Element>(_ configure: () -> (), add: ([Element]) -> PandaChain) -> PandaChain {
        ConfigStack.shared.push()
        configure()
        let elements = ConfigStack.shared.pop().flatMap { $0 as? Element }
        return add(elements)
    }
}

extension PandaChain where Object: UIView {
    /// Add subviews configured in `configure`, can be nested. For example:
    ///
    /// ```
    /// view.pd.sub {
    ///     imageView.pd.image(logoImage)
    ///     label.pd.text(title)
    ///     button.pd.title(buttonTitle)
    /// }
    /// ```
    ///
    /// If a subview is not configured, remember to access `pd` and assign it to an anonymous name to silence warnings.
    ///
    /// ```
    /// _ = subview.pd
    /// ```
    ///
    /// - parameter configure: Configure subviews.
    @discardableResult
    public func sub(_ configure: () -> ()) -> PandaChain {
        return sub(configure, add: addSubviews)
    }
}

extension PandaChain where Object: CALayer {
    /// Sub for layer, see `sub()` on `UIView` for details.
    @discardableResult
    public func sub(_ configure: () -> ()) -> PandaChain {
        return sub(configure, add: addSublayers)
    }
}

@available(iOS 9.0, *)
extension PandaChain where Object: UIStackView {
    /// Sub for stack view, see `sub()` on `UIView` for details.
    @discardableResult
    public func arrangedSub(_ configure: () -> ()) -> PandaChain {
        return sub(configure, add: addArrangedSubviews)
    }
}
