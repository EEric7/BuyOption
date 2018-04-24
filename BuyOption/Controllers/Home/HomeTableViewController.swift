//
//  HomeTableViewController.swift
//  BuyOption
//
//  Created by Eric ELEMBA ADI on 18/04/2018.
//  Copyright © 2018 Eric ELEMBA ADI. All rights reserved.
//

import UIKit
import SwiftyJSON

class HomeTableViewController: UITableViewController {
    
    struct Storyboard {
        static let homeCell = "homeCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchProducts()
        navigationItem.title = "BuyOption"
        self.tableView.reloadData()
        self.tableView.estimatedRowHeight = tableView.rowHeight
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == SceneTo.homeCell {
        }
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    
    func fetchProducts() {
        NetworkManager.sharedInstance.apiRequetURL { (json: JSON?, error: Error?) in
            guard error == nil else {
                print("Une erreur est survenue")
                return
            }
            if let json = json {
                let jsonDict = json["Products"].dictionaryValue
                for element in jsonDict {
                    let currentItem = Product(json: element.value)
                   Liste.tableProduct.append(currentItem)
                }
            }
         }
    }
    
}
