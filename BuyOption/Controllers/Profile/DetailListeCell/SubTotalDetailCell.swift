//
//  SubTotalDetailCell.swift
//  BuyOption
//
//  Created by Eric ELEMBA ADI on 19/04/2018.
//  Copyright © 2018 Eric ELEMBA ADI. All rights reserved.
//

import UIKit

class SubTotalDetailCell: UITableViewCell {
    @IBOutlet weak var subtotal: UILabel!
    @IBOutlet weak var priceSubtotal: UILabel!
    @IBOutlet weak var estimSH: UILabel!
    @IBOutlet weak var priceEstimSH: UILabel!
    @IBOutlet weak var taxe: UILabel!
    @IBOutlet weak var priceTaxe: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
