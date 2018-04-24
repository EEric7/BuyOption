//
//  ListeTableViewController.swift
//  BuyOption
//
//  Created by Eric ELEMBA ADI on 19/04/2018.
//  Copyright © 2018 Eric ELEMBA ADI. All rights reserved.
//

import UIKit

class ListeTableViewController: UITableViewController {
    
     struct Storyboard {
            static let itemCell = "itemListeCell"
            static let orderCell = "orderListCell"
            static let streetCell = "streetListeCell"
            static let cardCell = "cardListeCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         navigationItem.title = Liste.tableOption[statuSegue]
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
