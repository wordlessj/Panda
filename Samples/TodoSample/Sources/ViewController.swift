//
//  ViewController.swift
//  TodoSample
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

import UIKit
import Panda

class ViewController: RenderViewController, Component {
    struct Props: PropsProtocol {}

    struct State: StateProtocol {
        var todos = [Todo]()
        var insets = UIEdgeInsets()
    }

    func render() -> ElementProtocol {
        let leftCount = state.todos.reduce(0) { count, todo in
            todo.completed ? count : count + 1
        }
        let showsClear = state.todos.contains(where: { $0.completed })

        return UIView.el.backgroundColor(#colorLiteral(red: 0.9607843137, green: 0.9607843137, blue: 0.9607843137, alpha: 1)).subviews {
            UIView.el.paddingTop(YGValue(state.insets.top)).backgroundColor(.white).subviews {
                AddView.el
                    .height(60)
                    .props(\.showsToggle, !state.todos.isEmpty)
                    .props(\.isToggleDark, isAllCompleted())
                    .props(\.added, weakSelf(ViewController.added))
                    .props(\.toggled, weakSelf(ViewController.toggledAll))
            }
            ListView.el
                .flexGrow(1)
                .props(\.todos, state.todos)
                .props(\.changed, weakSelf(ViewController.changed))
                .props(\.toggled, weakSelf(ViewController.toggled))
                .props(\.deleted, weakSelf(ViewController.deleted))
            UIView.el.paddingBottom(YGValue(state.insets.bottom)).backgroundColor(.white).subviews {
                BottomBar.el
                    .height(40)
                    .props(\.count, leftCount)
                    .props(\.showsClear, showsClear)
                    .props(\.cleared, weakSelf(ViewController.cleared))
            }
        }
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        state.insets = view.safeAreaInsets
    }

    private func added(_ text: String) {
        state.todos.append(Todo(text: text))
    }

    private func toggledAll() {
        let completed = isAllCompleted()

        for index in state.todos.indices {
            state.todos[index].completed = !completed
        }
    }

    private func changed(_ index: Int, text: String) {
        state.todos[index].text = text
    }

    private func toggled(_ index: Int) {
        state.todos[index].completed = !state.todos[index].completed
    }

    private func deleted(_ index: Int) {
        state.todos.remove(at: index)
    }

    private func cleared() {
        state.todos = state.todos.filter { !$0.completed }
    }

    private func isAllCompleted() -> Bool {
        return !state.todos.contains { !$0.completed }
    }
}
