//
//  ComponentUpdater.swift
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

private struct WeakBox: Hashable {
    weak var object: AnyObject?
    let hashValue: Int

    static func ==(lhs: WeakBox, rhs: WeakBox) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }

    init(_ object: AnyObject) {
        self.object = object
        hashValue = object.hashValue
    }
}

class ComponentUpdater {
    static let shared = ComponentUpdater()

    private var lazyComponents = Set<WeakBox>()
    private var eagerComponents = Set<WeakBox>()

    func update(_ component: AnyObject, lazily: Bool) {
        let box = WeakBox(component)

        if lazily && eagerComponents.isEmpty {
            let (inserted, _) = lazyComponents.insert(box)

            if inserted && lazyComponents.count == 1 {
                DispatchQueue.main.async(qos: .userInteractive) {
                    self.update(&self.lazyComponents)
                }
            }
        } else {
            lazyComponents.remove(box)
            let (inserted, _) = eagerComponents.insert(box)

            if inserted && eagerComponents.count == 1 {
                update(&eagerComponents)
            }
        }
    }

    private func update(_ components: inout Set<WeakBox>) {
        while let box = components.first {
            var shouldRender = true

            if let component = box.object as? Renderable {
                shouldRender = component.doShouldRender()

                if shouldRender {
                    component.doBeforeRender()
                    component.doRender()
                }
            }

            components.remove(box)

            if let component = box.object as? Renderable, shouldRender {
                component.doAfterRender()
            }
        }
    }
}
