//
//  CardPaymentCell.swift
//  BuyOption
//
//  Created by Eric ELEMBA ADI on 19/04/2018.
//  Copyright © 2018 Eric ELEMBA ADI. All rights reserved.
//

import UIKit

class CardPaymentCell: UITableViewCell {
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var saisieEMail: UITextField!
    @IBOutlet weak var cardNumber: UILabel!
    @IBOutlet weak var saisieCardNumber: UITextField!
    @IBOutlet weak var expiryDate: UILabel!
    @IBOutlet weak var saisieExpiryDate: UITextField!
    @IBOutlet weak var securityCode: UILabel!
    @IBOutlet weak var saisieSecurityCode: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
