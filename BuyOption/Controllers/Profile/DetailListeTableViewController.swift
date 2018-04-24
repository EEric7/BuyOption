//
//  DetailListeTableViewController.swift
//  BuyOption
//
//  Created by Eric ELEMBA ADI on 19/04/2018.
//  Copyright © 2018 Eric ELEMBA ADI. All rights reserved.
//

import UIKit

class DetailListeTableViewController: UITableViewController {
    
    struct Storyboard {
        static let OrderCell = "detailOrderCell"
        static let itemCell = "itemDetailCell"
        static let subtotalCell = "subtotalDetailCell"
        static let totalCell = "totalDetailListeCell"
        static let cardCell = "cardDetailCell"
        static let streetCell = "streetDetailCell"
        static let okCell = "okDetailCell"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.reloadData()

        self.tableView.estimatedRowHeight = tableView.rowHeight
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

   
}
