//
//  Children.swift
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

struct Children<Object> {
    var elements: [ElementProtocol]
    var child: (Object, Int) -> Any
    var insert: (Object, Any, Int) -> ()
    var remove: (Object, Int) -> ()

    func apply(to object: Object, oldElements: [OldElement]) {
        var oldElements = oldElements

        for (index, element) in elements.enumerated() {
            if let oldIndex = oldElements.index(where: { element.isSimilar(to: $0) }) {
                if oldIndex > 0 {
                    moveChild(of: object, from: index + oldIndex, to: index)
                }

                updateChild(of: object, at: index, old: oldElements[oldIndex])
                oldElements.remove(at: oldIndex)
            } else {
                insertChild(to: object, at: index)
            }
        }

        for _ in oldElements.indices {
            removeChild(from: object, at: elements.count)
        }
    }

    func toOld() -> [OldElement] {
        return elements.map { $0.toOld() }
    }

    private func updateChild(of object: Object, at index: Int, old: OldElement) {
        let targetChild = child(object, index)
        elements[index].apply(to: targetChild, old: old)
    }

    private func moveChild(of object: Object, from: Int, to: Int) {
        insert(object, child(object, from), to)
    }

    private func insertChild(to object: Object, at index: Int) {
        let element = elements[index]
        let child = element.createObject()
        element.apply(to: child, old: nil)
        insert(object, child, index)
    }

    private func removeChild(from object: Object, at index: Int) {
        remove(object, index)
    }
}
