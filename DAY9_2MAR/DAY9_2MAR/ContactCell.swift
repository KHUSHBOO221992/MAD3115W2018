//
//  ContactCell.swift
//  DAY9_2MAR
//
//  Created by MacStudent on 2018-03-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ContactCell: UITableViewCell {

    @IBOutlet weak var ContactTitle: UILabel!
    @IBOutlet weak var ContactSubtitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
