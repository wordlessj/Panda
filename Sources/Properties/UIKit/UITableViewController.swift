//
//  UITableViewController.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: UITableViewController {
    @discardableResult
    public func tableView(_ value: UITableView?) -> PandaChain {
        object.tableView = value
        return self
    }

    @discardableResult
    public func clearsSelectionOnViewWillAppear(_ value: Bool) -> PandaChain {
        object.clearsSelectionOnViewWillAppear = value
        return self
    }

    @discardableResult
    public func refreshControl(_ value: UIRefreshControl?) -> PandaChain {
        object.refreshControl = value
        return self
    }
}
