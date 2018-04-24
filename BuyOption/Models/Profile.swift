//
//  Profile.swift
//  BuyOption
//
//  Created by Eric ELEMBA ADI on 24/04/2018.
//  Copyright © 2018 Eric ELEMBA ADI. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Profile {
    let idProfile: Int
    let idUtilisateur: Int
    let firstName: String
    let lastName: String
    let eMail: String
    let numberPhone: String
    let street: String
    
    var panier: [Product]
    var orders: [Order]
    var options: [Option]
    
    init(json: JSON) {
        self.idProfile = json["idProfile"].intValue
        self.idUtilisateur = json["id"].intValue
        self.firstName = json["firstName"].stringValue
        self.lastName = json["lastName"].stringValue
        self.eMail = json["eMail"].stringValue
        self.numberPhone = json.stringValue
        self.street = json.stringValue
        self.panier = []
        self.orders = []
        self.options = []
        
        if let panierArray = json["order"]["typePanier"].array {
            for panier in panierArray {
                self.panier.append(Product(json: panier))
            }
        }
        if let orderArray = json["order"]["typeOrder"].array {
            for order in orderArray {
                self.orders.append(Order(json: order))
            }
        }
        if let optionArray = json["order"]["typeBO"].array {
            for option in optionArray {
                self.options.append(Option(json: option))
            }
        }
    }
}

struct Order {
    let reference: String
    let created: String
    var products: [Product]
    
    init(json: JSON) {
        self.reference = json["reference"].stringValue
        self.created = json["created"].stringValue
        let productArray = json["product"].arrayValue
        
        self.products = []
        for product in productArray {
            self.products.append(Product(json: product))
        }
    }
}

struct Option {
    let idOB: Int
    let update: String
    let reference: String
    let delaiExpiry: String
    let mntAccount: Double
    let product: Product
    
    init(json: JSON) {
        self.idOB = json["idOB"].intValue
        self.update = json["upDateCmd"].stringValue
        self.reference = json["reference"].stringValue
        self.delaiExpiry = json["delaiExpiry"].stringValue
        self.mntAccount = json["mntAccount"].doubleValue
        self.product = Product(json: json["product"])
    }
}
