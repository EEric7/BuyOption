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
    let images: Array<Any>
    let rating: Int
}

struct Image {
    let imageURL: String
    let thumbnailURL: String
}

struct Shipping {
    let name: String
    let delayToDisplay: String
    let price: Int
    let maxDeliveryDate: String
    let minDeliveryDate: String
}

