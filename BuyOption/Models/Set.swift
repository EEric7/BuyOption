//
//  Vitrin.swift
//  BuyOption
//
//  Created by Eric ELEMBA ADI on 24/04/2018.
//  Copyright © 2018 Eric ELEMBA ADI. All rights reserved.
//

import Foundation
import SwiftyJSON

struct API {
    static let Cdiscount = ""
}

var statuSegue = 0

struct SceneTo {
    static let homeCell = "homeProductCell"
    static let categorieCell = "categoryToSubcategory"
    static let pannierSubmitCell = "panierToOrder"
    static let pannierBuyOptionCell = "panierToOption"
    static let orderSubmitCell = "orderToPayment"
    static let optionSubmitCell = "optionToPayment"
    static let profileOptionCell = "profileToListe"
    static let orderCell = "orderToDetail"
    static let cardCell = "cardToDetail"
    static let streetCell = "streetToDetail"
}

struct OptionListe {
    static let wishList = "Mes listes coups de coeur"
    static let buyOptionList = "Mes BuyOption"
    static let orderList = "Mes commandes"
    static let streetList = "Mes adresse"
    static let cardList = "Mes cartes"
}

struct Liste {
    static var profile: Profile?
    static var tableProduct: [Product] = []
    static var tableOption: [String] = [OptionListe.wishList, OptionListe.buyOptionList, OptionListe.orderList, OptionListe.streetList, OptionListe.cardList]
}
