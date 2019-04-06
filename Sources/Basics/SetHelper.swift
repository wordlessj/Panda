//
//  SetHelper.swift
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
    func forControlState<Attribute>(normal: Attribute,
                                    highlighted: Attribute?,
                                    selected: Attribute?,
                                    disabled: Attribute?,
                                    setter: (Attribute?, UIControl.State) -> ()) -> PandaChain {
        setter(normal, .normal)

        if let highlighted = highlighted {
            setter(highlighted, .highlighted)
        }

        if let selected = selected {
            setter(selected, .selected)
        }

        if let disabled = disabled {
            setter(disabled, .disabled)
        }

        return self
    }

    func forBarMetrics<Attribute>(default d: Attribute,
                                  compact: Attribute?,
                                  defaultPrompt: Attribute?,
                                  compactPrompt: Attribute?,
                                  setter: (Attribute, UIBarMetrics) -> ()) -> PandaChain {
        return forBarMetrics(default: d,
                             compact: compact,
                             defaultPrompt: defaultPrompt,
                             compactPrompt: compactPrompt) { (attribute: Attribute?, metrics) in
                                guard let attribute = attribute else { return }
                                setter(attribute, metrics)
                            }
    }

    func forBarMetrics<Attribute>(default d: Attribute,
                                  compact: Attribute?,
                                  defaultPrompt: Attribute?,
                                  compactPrompt: Attribute?,
                                  setter: (Attribute?, UIBarMetrics) -> ()) -> PandaChain {
        setter(d, .default)

        if let compact = compact {
            setter(compact, .compact)
        }

        if let defaultPrompt = defaultPrompt {
            setter(defaultPrompt, .defaultPrompt)
        }

        if let compactPrompt = compactPrompt {
            setter(compactPrompt, .compactPrompt)
        }

        return self
    }
}
