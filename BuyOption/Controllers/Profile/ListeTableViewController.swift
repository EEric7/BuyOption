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
//        if Liste.profile == nil {
            return 1
//        } else {
//            switch statuSegue {
//            case 0:
//                return Liste.profile!.panier.count
//            case 1:
//                return Liste.profile!.options.count
//            case 2:
//                return Liste.profile!.orders.count
//            default:
//                return 1
//            }
//        }
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch statuSegue {
            case 0:
                if indexPath.row == 0 {
                    return 160
                }
                    return 0
            case 1:
                if indexPath.row == 1 {
                    return 90
                }
                    return 0
            case 2:
                if indexPath.row == 2 {
                    return 190
                }
                    return 0
            case 3:
                if indexPath.row == 3 {
                    return 160
                }
                    return 0
            case 4:
                if indexPath.row == 4 {
                    return 190
                }
                    return 0
            default:
                if indexPath.row == 5 {
                    return 190
                }
                    return 0
        }
    }

     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        switch statuSegue {
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.itemCell, for: indexPath) as! ItemListCell
                cell.nameItem.text = Liste.profile?.panier[indexPath.row].name
                cell.priceItem.text = String(describing: Liste.profile?.panier[indexPath.row].offer.salePrice)
                return cell
            case 1:
                let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.orderCell, for: indexPath) as! DetailOrderListeCell
                    cell.dateLineOrder.text = Liste.profile?.options[indexPath.row].delaiExpiry
                    cell.dateOrder.text = Liste.profile?.options[indexPath.row].created
                    cell.serielNumberOrder.text = Liste.profile?.options[indexPath.row].reference
                return cell
            case 2:
                let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.orderCell, for: indexPath) as! DetailOrderListeCell
                    cell.dateLineOrder.isHidden = true
                    cell.dateOrder.text = Liste.profile?.orders[indexPath.row].created
                    cell.serielNumberOrder.text = Liste.profile?.orders[indexPath.row].reference
                return cell
            case 3:
                let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.streetCell, for: indexPath) as! StreetListCell
                cell.firstLastName.text = "\(String(describing: Liste.profile?.lastName)) \(String(describing: Liste.profile?.firstName))"
                    cell.street.text = Liste.profile?.street.street
                    cell.city.text = Liste.profile?.street.city
                    cell.cP.text = Liste.profile?.street.cp
                    cell.country.text = Liste.profile?.street.country
                return cell
            case 4:
                let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.cardCell, for: indexPath) as! CardListeCell
                cell.lastFirstName.text = "\(String(describing: Liste.profile?.lastName)) \(String(describing: Liste.profile?.firstName))"
                cell.numberCard.text = String(describing: Liste.profile?.card.numberCard)
                cell.securityCode.text = String(describing: Liste.profile?.card.securityCode)
                cell.dateExpiryCard.text = Liste.profile?.card.delaiExpiry
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.emptyCell, for: indexPath) as! EmptyListCell
            cell.empty.text = "Empty"
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.emptyCell, for: indexPath) as! EmptyListCell
        cell.empty.text = "Empty"
        return cell
    }
}

