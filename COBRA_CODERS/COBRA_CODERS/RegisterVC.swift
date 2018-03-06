//
//  RegisterVC.swift
//  COBRA_CODERS
//
//  Created by MacStudent on 2018-03-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController
{

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var rEmail: UITextField!
    @IBOutlet weak var rPassword: UITextField!
    @IBOutlet weak var rCPassword: UITextField!
    @IBOutlet weak var rCNumber: UITextField!
    @IBOutlet weak var rCPNumber: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func registerButtonTapped(_ sender: UIBarButtonItem)
    {
        
        //@objc func submitButtonTapped()
        
        let Name = name.text
        let Email = rEmail.text
        let Contact = rCNumber.text
        let CarPlate = rCPNumber.text
        let Password = rPassword.text
        let ConfirmPassword = rCPassword.text
        
        if (Name == "" || Email == "" || Contact == "" || CarPlate == "" || Password == "" || ConfirmPassword == "")
        {
            let infoAlert = UIAlertController(title: "Invalid Information", message: "Kindly fill all the fields" , preferredStyle: .alert)
            
            infoAlert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
            
            self.present(infoAlert, animated: true, completion: nil)
        }
        else
        {
            if (Password != ConfirmPassword)
            {
                let infoAlert = UIAlertController(title: "Warning", message: "Password Mismatch" , preferredStyle: .alert)
                
                infoAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                
                self.present(infoAlert, animated: true, completion: nil)
            }
            
            let infoAlert = UIAlertController(title: "Welcome, \(name.text!)", message: "You are now Registered !! \n Kindly login with your email and password" , preferredStyle: .alert)
            
            infoAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: clearRegForm))
            
            self.present(infoAlert, animated: true, completion: nil)
        }
        
    }
    
    func clearRegForm(action: UIAlertAction)
    {
        name.text = ""
        rEmail.text = ""
        rCNumber.text = ""
        rCPNumber.text = ""
        rPassword.text = ""
        rCPassword.text = ""
    }
}
