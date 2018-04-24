//
//  Product.swift
//  BuyOption
//
//  Created by Eric ELEMBA ADI on 17/04/2018.
//  Copyright © 2018 Eric ELEMBA ADI. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Product {
    let id: String
    let name: String
    let description: String
    let ean: String
    let brand: String
    let mainImgUrl: String
    var images: [Image] = []
    let offer: Offer
    
    init(json: JSON) {
        self.id = json["id"].stringValue
        self.name = json["name"].stringValue
        self.description = json["description"].stringValue
        self.ean = json["ean"].stringValue
        self.brand = json["brand"].stringValue
        self.mainImgUrl = json["mainImgUrl"].stringValue
        let imagesArray = json["images"].arrayValue
        let offers = json["offers"]
        for img in imagesArray{
            self.images.append(Image(json: img))
        }
        self.offer = Offer(json: offers)
    }
}

struct Offer {
    let id: Int
    let condition: String
    let isAvaible: Bool
    let salePrice: Double
    let seller: Seller
    var shipping: [Shipping] = []
    
    init(json: JSON) {
        self.id = json["id"].intValue
        self.condition = json["condition"].stringValue
        self.isAvaible = json["isAvaible"].boolValue
        self.salePrice = json["salePrice"].doubleValue

        let shippingsArray = json["shipping"].arrayValue
        let sellers = json["seller"]
        
        self.seller = Seller(json: sellers)

        
        for shipping in shippingsArray{
            self.shipping.append(Shipping(json: shipping))
        }
    }
}

struct Image {
    let imageURL: String
    let thumbnailURL: String
    
    init(json: JSON) {
        self.imageURL = json["imageURL"].stringValue
        self.thumbnailURL = json["thumbnailURL"].stringValue
    }
}

struct Seller {
    let id: Int
    let name: String
    init(json: JSON) {
        self.id = json["id"].intValue
        self.name = json["name"].stringValue
    }
}

struct Shipping {
    let name: String
    let delayToDisplay: String
    let price: Int
    let maxDeliveryDate: String
    let minDeliveryDate: String
    
    init(json: JSON) {
        self.name = json["name"].stringValue
        self.delayToDisplay = json["delayToDisplay"].stringValue
        self.price = json["price"].intValue
        self.maxDeliveryDate = json["maxDeliveryDate"].stringValue
        self.minDeliveryDate = json["minDeliveryDate"].stringValue
    }
}

