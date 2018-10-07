//
//  DataCollectionView.swift
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

private class DataCollectionViewCell: RenderCollectionViewCell, Component {
    struct Props: PropsProtocol {
        var element: ElementProtocol?
    }

    struct State: StateProtocol {}

    func render() -> ElementProtocol {
        return props.element ?? UIView.el
    }
}

public class DataCollectionView: UICollectionView {
    public var data = [AnyHashable]() {
        didSet {
            guard data != oldValue else { return }
            reloadData()
        }
    }

    public var renderItem: ((Any, Int) -> ElementProtocol)?

    private let identifier = "Cell"

    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        didInit()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        didInit()
    }

    private func didInit() {
        dataSource = self
        register(DataCollectionViewCell.self, forCellWithReuseIdentifier: identifier)
    }
}

extension DataCollectionView: UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }

    public func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        let cell = collectionView
            .dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath)
            as! DataCollectionViewCell
        let index = indexPath.item
        cell.props.element = renderItem?(data[index], index)
        cell.renderIfNeeded()
        return cell
    }
}

extension Element where Object: DataCollectionView {
    @discardableResult
    public func data(_ value: [AnyHashable]) -> Self {
        return addAttributes(key: "data", value: value) {
            $0.data = value
        }
    }

    @discardableResult
    public func renderItem(_ value: @escaping (Any, Int) -> ElementProtocol) -> Self {
        return addChangingAttributes(key: "renderItem") {
            $0.renderItem = value
        }
    }
}
