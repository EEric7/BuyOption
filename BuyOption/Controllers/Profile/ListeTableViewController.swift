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
        static let emptyCell = "emptyCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         navigationItem.title = Liste.tableOption[statuSegue]
        self.tableView.reloadData()
        self.tableView.estimatedRowHeight = tableView.rowHeight
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }
}

extension ListeTableViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if Liste.profile == nil {
            return 1
        } else {
            switch statuSegue {
            case 0:
                return Liste.profile!.panier.count
            case 1:
                return Liste.profile!.options.count
            case 2:
                return Liste.profile!.orders.count
            default:
                return 1
            }
        }
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cell = tableView.cellForRow(at: indexPath)
        
        switch statuSegue {
            case 0:
                if cell?.tag == 0 {
                    return 160
                } else {
                    return 0
                }
            case 1:
                if cell?.tag == 1{
                    return 90
                } else {
                    return 0
                }
            case 2:
                if cell?.tag == 1 {
                    return 190
                } else {
                    return 0
                }
            case 3:
                if cell?.tag == 2 {
                    return 160
                } else {
                    return 0
                }
            default:
                if cell?.tag == 3 {
                    return 190
                } else {
                    return 0
                }
        }
    }

     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if statuSegue == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.itemCell, for: indexPath) as! ItemListCell
            cell.nameItem.text = Liste.profile?.panier[indexPath.row].name
            cell.priceItem.text = String(describing: Liste.profile?.panier[indexPath.row].offer.salePrice)
            return cell
        } else if statuSegue == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.orderCell, for: indexPath) as! DetailOrderListeCell
                cell.dateLineOrder.text = Liste.profile?.options[indexPath.row].delaiExpiry
                cell.dateOrder.text = Liste.profile?.options[indexPath.row].created
                cell.serielNumberOrder.text = Liste.profile?.options[indexPath.row].reference
            return cell
         } else if statuSegue == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.orderCell, for: indexPath) as! DetailOrderListeCell
                cell.dateLineOrder.isHidden = true
                cell.dateOrder.text = Liste.profile?.orders[indexPath.row].created
                cell.serielNumberOrder.text = Liste.profile?.orders[indexPath.row].reference
            return cell
         } else if statuSegue == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.streetCell, for: indexPath) as! StreetListCell
            cell.firstLastName.text = "Max"
                cell.street.text = "22 Melrose Place"
                cell.city.text = "Californie"
                cell.cP.text = "77328"
                cell.country.text = "USA"
            return cell
        } else if statuSegue == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.cardCell, for: indexPath) as! CardListeCell
            cell.lastFirstName.text = "Max"
            cell.numberCard.text = "44393939349394"
            cell.securityCode.text = "345"
            cell.dateExpiryCard.text = "14/23"
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.emptyCell, for: indexPath) as! EmptyListCell
        cell.empty.text = "Empty"
        return cell
    }
}

