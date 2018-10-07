//
//  RenderView.swift
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
    func applyLayoutIfRoot() {
        guard yoga.isEnabled && !(superview?.yoga.isEnabled ?? false) else { return }
        yoga.applyLayout(preservingOrigin: true)
    }
}

open class RenderView: UIView, SetRenderable {
    public override init(frame: CGRect) {
        super.init(frame: frame)
        forceRender()
        didInit()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        forceRender()
        didInit()
    }

    open func didInit() {}

    open override func layoutSubviews() {
        super.layoutSubviews()
        applyLayoutIfRoot()
    }
}

open class RenderCollectionViewCell: UICollectionViewCell, SetRenderable {
    public override init(frame: CGRect) {
        super.init(frame: frame)
        forceRender()
        didInit()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        forceRender()
        didInit()
    }

    open func didInit() {}

    open override func layoutSubviews() {
        super.layoutSubviews()
        contentView.applyLayoutIfRoot()
    }
}

open class RenderCollectionReusableView: UICollectionReusableView, SetRenderable {
    public override init(frame: CGRect) {
        super.init(frame: frame)
        forceRender()
        didInit()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        forceRender()
        didInit()
    }

    open func didInit() {}

    open override func layoutSubviews() {
        super.layoutSubviews()
        applyLayoutIfRoot()
    }
}

open class RenderTableViewCell: UITableViewCell, SetRenderable {
    public override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        forceRender()
        didInit()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        forceRender()
        didInit()
    }

    open func didInit() {}

    open override func layoutSubviews() {
        super.layoutSubviews()
        contentView.applyLayoutIfRoot()
    }
}

open class RenderTableViewHeaderFooterView: UITableViewHeaderFooterView, SetRenderable {
    public override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        forceRender()
        didInit()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        forceRender()
        didInit()
    }

    open func didInit() {}

    open override func layoutSubviews() {
        super.layoutSubviews()
        contentView.applyLayoutIfRoot()
    }
}

open class RenderViewController: UIViewController, SetRenderable {
    open override func viewDidLoad() {
        super.viewDidLoad()
        forceRender()
    }

    open override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        view.applyLayoutIfRoot()
    }
}
