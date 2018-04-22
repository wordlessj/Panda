//
//  LayoutManager.swift
//  Panda
//
//  Copyright (c) 2018 Javier Zhang (https://wordlessj.github.io/)
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

import Foundation

private extension UIView {
    var rootLayoutView: UIView {
        var view = self

        while (view.superview?.yoga.isEnabled ?? false) {
            view = view.superview!
        }

        return view
    }
}

class LayoutManager {
    static let shared = LayoutManager()

    private var rootViews = Set<UIView>()
    private var counter = 0

    func add(_ view: UIView) {
        rootViews.insert(view.rootLayoutView)
    }

    func beginLayout() {
        counter += 1
    }

    func endLayout() {
        counter -= 1

        if counter == 0 {
            for rootView in rootViews {
                rootView.yoga.applyLayout(preservingOrigin: true)
            }

            rootViews.removeAll()
        }
    }
}
