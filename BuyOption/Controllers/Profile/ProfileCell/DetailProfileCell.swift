//
//  DetailProfileTableViewCell.swift
//  BuyOption
//
//  Created by Eric ELEMBA ADI on 19/04/2018.
//  Copyright © 2018 Eric ELEMBA ADI. All rights reserved.
//

import UIKit

class DetailProfileCell: UITableViewCell {
    @IBOutlet weak var inProgress: UILabel!
    @IBOutlet weak var order: UILabel!
    @IBOutlet weak var nbrOrder: UILabel!
    @IBOutlet weak var option: UILabel!
    @IBOutlet weak var nbrOption: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
