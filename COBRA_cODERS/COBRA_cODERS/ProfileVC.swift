//
//  ProfileVC.swift
//  NRK_PARKING
//
//  Created by MacStudent on 2018-03-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController
{

    @IBOutlet weak var Nametextfield: UITextField!
    @IBOutlet weak var passwordtextfield: UITextField!
    @IBOutlet weak var ContactNumbertextfield: UITextField!
    @IBOutlet weak var CarPlateNumber: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func btnDoneTapped(_ sender: UIBarButtonItem)
    {
        loadUserProfile()
        
    }
    func loadUserProfile(){
        
    }

}
