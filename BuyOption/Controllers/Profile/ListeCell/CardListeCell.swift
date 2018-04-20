//
//  CardListTableViewCell.swift
//  BuyOption
//
//  Created by Eric ELEMBA ADI on 19/04/2018.
//  Copyright © 2018 Eric ELEMBA ADI. All rights reserved.
//

import UIKit

class CardListeCell: UITableViewCell {
    @IBOutlet weak var lastFirstName: UILabel!
    @IBOutlet weak var numberCard: UILabel!
    @IBOutlet weak var dateExpiryCard: UILabel!
    @IBOutlet weak var securityCode: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
