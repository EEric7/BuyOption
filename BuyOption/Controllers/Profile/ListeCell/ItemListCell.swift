//
//  ItemTableViewCell.swift
//  BuyOption
//
//  Created by Eric ELEMBA ADI on 19/04/2018.
//  Copyright © 2018 Eric ELEMBA ADI. All rights reserved.
//

import UIKit

class ItemListCell: UITableViewCell {
    @IBOutlet weak var imageItem: UIButton!
    @IBOutlet weak var nameItem: UILabel!
    @IBOutlet weak var priceItem: UILabel!
    @IBOutlet weak var buyOption: UIButton!
    @IBOutlet weak var buy: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
