//
//  Utilitaire.swift
//  BuyOption
//
//  Created by Eric ELEMBA ADI on 20/04/2018.
//  Copyright © 2018 Eric ELEMBA ADI. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireImage
import SwiftyJSON

// Singleton pour l'appel réseau
typealias ServiceResponse = ((JSON?, Error?) -> Void)

class NetworkManager {
    let apiToContact = API.Cdiscount
    static let sharedInstance = NetworkManager()
    
    func apiRequetURL(_ completion: @escaping ServiceResponse) {
        Alamofire.request(apiToContact, method: .get)
            .validate().responseJSON { response in
                switch response.result {
                    case .success(let value):
                        let jsonObject = JSON(value)
                        print("## SUCCESSFULLY RECEIVED JSON DATAS ##")
                        completion(jsonObject, nil)
                    case .failure(let error):
                        print(error)
                        print(error.localizedDescription)
                        completion(nil, error)
                 }
            }
    }
}
