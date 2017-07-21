//
//  CATiledLayer.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import QuartzCore

extension PandaChain where Object: CATiledLayer {
    @discardableResult
    public func levelsOfDetail(_ value: Int) -> PandaChain {
        object.levelsOfDetail = value
        return self
    }

    @discardableResult
    public func levelsOfDetailBias(_ value: Int) -> PandaChain {
        object.levelsOfDetailBias = value
        return self
    }

    @discardableResult
    public func tileSize(_ value: CGSize) -> PandaChain {
        object.tileSize = value
        return self
    }
}
