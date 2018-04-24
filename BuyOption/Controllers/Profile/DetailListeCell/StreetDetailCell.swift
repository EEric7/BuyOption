//
//  AdresseDetailCell.swift
//  BuyOption
//
//  Created by Eric ELEMBA ADI on 19/04/2018.
//  Copyright © 2018 Eric ELEMBA ADI. All rights reserved.
//

import UIKit

class StreetDetailCell: UITableViewCell {
    @IBOutlet weak var socialStatue: UISegmentedControl!
    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var saisieFirstName: UITextField!
    @IBOutlet weak var lastName: UILabel!
    @IBOutlet weak var saisieLastName: UITextField!
    @IBOutlet weak var street: UILabel!
    @IBOutlet weak var saisieStreet: UITextField!
    @IBOutlet weak var streetCompl: UILabel!
    @IBOutlet weak var saisieStreetCompl: UITextField!
    @IBOutlet weak var codePostal: UILabel!
    @IBOutlet weak var saisieCP: UITextField!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var saisieCity: UITextField!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var saisieCountry: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
