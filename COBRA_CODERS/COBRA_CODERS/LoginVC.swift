//
//  LoginVC.swift
//  COBRA_CODERS
//
//  Created by MacStudent on 2018-03-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class LoginVC: UIViewController
{

    @IBOutlet weak var uEmail: UITextField!
    @IBOutlet weak var uPass: UITextField!
    
    @IBAction func buttonLogin(_ sender: UIBarButtonItem)
    {
        
        let pass = uPass.text
        let email = uEmail.text
        
        if(email == "user" && pass == "user")
        {
        }
            
        else
        {
            let infoAlert = UIAlertController(title: "Invalid Login", message: "Incorrect Username or Password !!" , preferredStyle: .alert)
            
            infoAlert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
            
            self.present(infoAlert, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        
    }
    
}
