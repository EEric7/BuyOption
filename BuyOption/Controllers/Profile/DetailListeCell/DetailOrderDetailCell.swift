//
//  DetailOrderDetailCell.swift
//  BuyOption
//
//  Created by Eric ELEMBA ADI on 19/04/2018.
//  Copyright © 2018 Eric ELEMBA ADI. All rights reserved.
//

import UIKit

class DetailOrderDetailCell: UITableViewCell {
    @IBOutlet weak var dateOrder: UILabel!
    @IBOutlet weak var dateLineOrder: UILabel!
    @IBOutlet weak var statutOrder: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
