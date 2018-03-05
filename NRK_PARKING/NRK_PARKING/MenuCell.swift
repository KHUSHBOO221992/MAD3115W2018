//
//  MenuCell.swift
//  NRK_PARKING
//
//  Created by MacStudent on 2018-03-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class MenuCell: UITableViewCell {

    @IBOutlet weak var lblMenu: UILabel!
    
    func show(isSpecial: Bool, price: Double){
        if !isSpecial {
            lblMenu.text = ""
            contentView.backgroundColor = UIColor.blue
        }
        else
        {
            lblMenu.text = "ItemTitle"
        }
    }
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
    }

}

