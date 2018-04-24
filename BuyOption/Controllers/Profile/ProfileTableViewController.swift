//
//  ProfileTableViewController.swift
//  BuyOption
//
//  Created by Eric ELEMBA ADI on 19/04/2018.
//  Copyright © 2018 Eric ELEMBA ADI. All rights reserved.
//

import UIKit

class ProfileTableViewController: UITableViewController {
    
    struct Storyboard {
            static let detailCell = "detailProfileCell"
            static let optionCell = "optionListeCell"
            static let disconnect = "disconnectProfileCell"
    }
   // var statuSegue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Profile"
        self.tableView.reloadData()
        self.tableView.estimatedRowHeight = tableView.rowHeight
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       statuSegue = (indexPath.row - 1)
    }

}

// MARK - UITableViewDataSource
extension ProfileTableViewController
{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return (Liste.tableOption.count + 2)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.detailCell, for: indexPath) as! DetailProfileCell
            cell.inProgress.text = "In progress"
            cell.nbrOption.text = "0"
            cell.nbrOrder.text = "0"
            cell.option.text = "Option"
            cell.order.text = "Order"
            return cell
        }
        else if indexPath.row == Liste.tableOption.count + 1 {
            // cartDetailCell
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.disconnect, for: indexPath) as! DisconnectProfileCell
            cell.disconnect.titleLabel?.text = "Disconnect"
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.optionCell, for: indexPath) as! OptionListeCell
        cell.titleOption.text = Liste.tableOption[indexPath.row - 1]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 120
        } else if indexPath.row == Liste.tableOption.count + 1 {
            return 70
        }
      return 60
    }
}
