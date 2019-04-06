//
//  UITableViewController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UITableViewController {
    @discardableResult
    public func tableView(_ value: UITableViewConvertible!) -> PandaChain {
        object.tableView = unbox(value)
        return self
    }

    @discardableResult
    public func clearsSelectionOnViewWillAppear(_ value: Bool) -> PandaChain {
        object.clearsSelectionOnViewWillAppear = value
        return self
    }

    @discardableResult
    public func refreshControl(_ value: UIRefreshControlConvertible?) -> PandaChain {
        object.refreshControl = unbox(value)
        return self
    }
}
