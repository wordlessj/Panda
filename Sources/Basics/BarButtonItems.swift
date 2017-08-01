//
//  BarButtonItems.swift
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

private func unboxItem(_ item: Any?) -> UIBarButtonItem? {
    return item.flatMap { unbox($0) as? UIBarButtonItem }
}

private func unboxItems(_ items: [Any]) -> [UIBarButtonItem] {
    return items.flatMap { unbox($0) as? UIBarButtonItem }
}

@available(iOS 9.0, *)
extension PandaChain where Object: UIBarButtonItemGroup {
    /// `barButtonItems`
    ///
    /// - parameter items: `UIBarButtonItem` or configured by `pd` extension.
    @discardableResult
    public func items(_ items: [Any]) -> PandaChain {
        object.barButtonItems = unboxItems(items)
        return self
    }

    @available(*, deprecated, renamed: "items()")
    @discardableResult
    public func barButtonItems(_ array: [Any]) -> PandaChain {
        return items(array)
    }
}

extension PandaChain where Object: UINavigationItem {
    /// `backBarButtonItem`
    ///
    /// - parameter item: `UIBarButtonItem` or configured by `pd` extension.
    @discardableResult
    public func backItem(_ item: Any?) -> PandaChain {
        object.backBarButtonItem = unboxItem(item)
        return self
    }

    @available(*, deprecated, renamed: "backItem()")
    @discardableResult
    public func backBarButtonItem(_ item: Any?) -> PandaChain {
        return backItem(item)
    }

    /// `leftBarButtonItems`
    ///
    /// - parameters:
    ///     - items: `UIBarButtonItem` or configured by `pd` extension.
    ///     - animated: Defaults to `false`.
    @discardableResult
    public func leftItems(_ items: [Any], animated: Bool = false) -> PandaChain {
        object.setLeftBarButtonItems(unboxItems(items), animated: animated)
        return self
    }

    @available(*, deprecated, renamed: "leftItems()")
    @discardableResult
    public func leftBarButtonItems(_ items: [Any], animated: Bool = false) -> PandaChain {
        return leftItems(items, animated: animated)
    }

    /// `leftBarButtonItem`
    ///
    /// - parameters:
    ///     - item: `UIBarButtonItem` or configured by `pd` extension.
    ///     - animated: Defaults to `false`.
    @discardableResult
    public func leftItem(_ item: Any?, animated: Bool = false) -> PandaChain {
        object.setLeftBarButton(unboxItem(item), animated: animated)
        return self
    }

    @available(*, deprecated, renamed: "leftItem()")
    @discardableResult
    public func leftBarButtonItem(_ item: Any?, animated: Bool = false) -> PandaChain {
        return leftItem(item, animated: animated)
    }

    /// `rightBarButtonItems`
    ///
    /// - parameters:
    ///     - items: `UIBarButtonItem` or configured by `pd` extension.
    ///     - animated: Defaults to `false`.
    @discardableResult
    public func rightItems(_ items: [Any], animated: Bool = false) -> PandaChain {
        object.setRightBarButtonItems(unboxItems(items), animated: animated)
        return self
    }

    @available(*, deprecated, renamed: "rightItems()")
    @discardableResult
    public func rightBarButtonItems(_ items: [Any], animated: Bool = false) -> PandaChain {
        return rightItems(items, animated: animated)
    }

    /// `rightBarButtonItem`
    ///
    /// - parameters:
    ///     - item: `UIBarButtonItem` or configured by `pd` extension.
    ///     - animated: Defaults to `false`.
    @discardableResult
    public func rightItem(_ item: Any?, animated: Bool = false) -> PandaChain {
        object.setRightBarButton(unboxItem(item), animated: animated)
        return self
    }

    @available(*, deprecated, renamed: "rightItem()")
    @discardableResult
    public func rightBarButtonItem(_ item: Any?, animated: Bool = false) -> PandaChain {
        return rightItem(item, animated: animated)
    }
}

extension PandaChain where Object: UIToolbar {
    /// Set items.
    ///
    /// - parameters:
    ///     - items: `UIBarButtonItem` or configured by `pd` extension.
    ///     - animated: Defaults to `false`.
    @discardableResult
    public func items(_ items: [Any], animated: Bool = false) -> PandaChain {
        object.setItems(unboxItems(items), animated: animated)
        return self
    }
}

extension PandaChain where Object: UIViewController {
    /// Set toolbar items.
    ///
    /// - parameters:
    ///     - items: `UIBarButtonItem` or configured by `pd` extension.
    ///     - animated: Defaults to `false`.
    @discardableResult
    public func toolbarItems(_ items: [Any], animated: Bool = false) -> PandaChain {
        object.setToolbarItems(unboxItems(items), animated: animated)
        return self
    }
}
