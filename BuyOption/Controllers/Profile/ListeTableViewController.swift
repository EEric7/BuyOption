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
            switch statuSegue {
                case 0:
                        if (tableView.dequeueReusableCell(withIdentifier: Storyboard.itemCell)?.tag == 0) || Liste.profile?.panier.isEmpty == true {
                            return 160
                        } else {
                            return 0
                        }
                case 1:
                        if (tableView.dequeueReusableCell(withIdentifier: Storyboard.orderCell)?.tag == 1) || Liste.profile?.options.isEmpty == true {
                            return 90
                        } else {
                            return 0
                        }
                    
                case 2:
                        if (tableView.dequeueReusableCell(withIdentifier: Storyboard.orderCell)?.tag == 1) || Liste.profile?.orders.isEmpty == true {
                            return 160
                        } else {
                            return 0
                        }
                case 3:
                    if (tableView.dequeueReusableCell(withIdentifier: Storyboard.streetCell)?.tag == 2) || Liste.profile?.street != nil {
                        return 190
                    } else {
                        return 0
                    }
                case 4:
                    if (tableView.dequeueReusableCell(withIdentifier: Storyboard.cardCell)?.tag == 3) || Liste.profile?.card != nil {
                        return 190
                    } else {
                        return 0
                    }
                default:
                    if (tableView.dequeueReusableCell(withIdentifier: Storyboard.cardCell)?.tag == 4) {
                        return 190
                    } else {
                        return 0
                    }
            }
    }

     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if statuSegue == 0 || Liste.profile?.panier.isEmpty == true {
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.itemCell, for: indexPath) as! ItemListCell
            cell.nameItem.text = Liste.profile?.panier[indexPath.row].name
            cell.priceItem.text = String(describing: Liste.profile?.panier[indexPath.row].offer.salePrice)
           return cell
        } else if statuSegue == 1 || Liste.profile?.options.isEmpty == true {
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.orderCell, for: indexPath) as! DetailOrderListeCell
                cell.dateLineOrder.text = "10/2/19"
                cell.dateOrder.text = "10/15/18"
                cell.serielNumberOrder.text = "23244544545"
            return cell
         } else if statuSegue == 2 || Liste.profile?.orders.isEmpty == true {
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.orderCell, for: indexPath) as! DetailOrderListeCell
                cell.dateLineOrder.isHidden = true
                cell.dateOrder.text = "12/16/18"
                cell.serielNumberOrder.text = "232454534635635"
           return cell
         } else if statuSegue == 3 || Liste.profile?.street != nil {
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.streetCell, for: indexPath) as! StreetListCell
            cell.firstLastName.text = "Max"
                cell.street.text = "22 Melrose Place"
                cell.city.text = "Californie"
                cell.cP.text = "77328"
                cell.country.text = "USA"
            return cell
        } else if statuSegue == 4 || Liste.profile?.card != nil {
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.cardCell, for: indexPath) as! CardListeCell
            cell.lastFirstName.text = "Max"
            cell.numberCard.text = "44393939349394"
            cell.securityCode.text = "345"
            cell.dateExpiryCard.text = "14/23"
            return cell
        } else {
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.emptyCell, for: indexPath) as! EmptyListCell
        cell.empty.text = "Empty"
        return cell
        }
    }
}

