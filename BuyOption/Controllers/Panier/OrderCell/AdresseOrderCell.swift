//
//  AdresseOrderCell.swift
//  BuyOption
//
//  Created by Eric ELEMBA ADI on 19/04/2018.
//  Copyright © 2018 Eric ELEMBA ADI. All rights reserved.
//

import UIKit

class AdresseOrderCell: UITableViewCell {
    @IBOutlet weak var civilState: UISegmentedControl!
    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var fieldFirstName: UITextField!
    @IBOutlet weak var lastName: UILabel!
    @IBOutlet weak var fielsLastName: UITextField!
    @IBOutlet weak var Street: UILabel!
    @IBOutlet weak var fieldStreet: UITextField!
    @IBOutlet weak var streetCompl: UILabel!
    @IBOutlet weak var fieldStreetCompl: UITextField!
    @IBOutlet weak var cP: UILabel!
    @IBOutlet weak var fieldCP: UITextField!
    @IBOutlet weak var City: UILabel!
    @IBOutlet weak var fieldCity: UITextField!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var fieldCountry: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
