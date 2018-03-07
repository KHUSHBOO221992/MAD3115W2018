//
//  LoginVC.swift
//  NRK_PARKING
//
//  Created by MacStudent on 2018-02-26.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class LoginVC: UIViewController
{
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var switchRemember: UISwitch!
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated:Bool)
    {

        self.txtEmail.text = ""
        self.txtPassword.text = ""

    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()

    }

    @IBAction func btnGoAction(_ sender: UIBarButtonItem)
    {
        if authenicateUser()
        {
            displayMenuScreen()
        }
        else
        {
           
            let infoAlert = UIAlertController(title: "Incorrect Data", message: "Email or Password incorrect...Please retry", preferredStyle: .alert)

            
            infoAlert.addAction(UIAlertAction(title: NSLocalizedString("Retry", comment: "Default action"), style: .destructive, handler: nil))

            
            self.present(infoAlert, animated: true, completion: nil)
        }
    }

    
    @IBAction func btnLoginAction(_ sender: UIButton)
    {
        let Email = txtEmail.text
        let Password = txtPassword.text
        
        if (Email == "khushboo" && Password == "bhatoia")
        {
            
            let infoAlert = UIAlertController(title: "AUTHENTICATED", message: "CONGRATULATION", preferredStyle: .alert)
            
            infoAlert.addAction(UIAlertAction(title: "GOOD", style: .default, handler: nil))
            
            self.present(infoAlert, animated: true, completion: nil)
            
        }
    }
    

    @IBAction func switchRememberAction(_ sender: UISwitch)
    {
        if self.switchRemember.isOn
        {
            let saveAlert = UIAlertController(title: "Saved", message: "Your data is saved", preferredStyle: .alert)

            saveAlert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Data saved"), style: .default, handler: nil))


            self.present(saveAlert, animated: true, completion: nil)
        }
    }


    @IBAction func btnRegisterAction(_ sender: UIBarButtonItem)
    {
        displayRegisterScreen()
    }



    func authenicateUser() -> Bool
    {
        if (txtEmail.text == "khushboo" && txtPassword.text == "bhatoia")
        {
            return true
        }
        else
        {
            return false
        }
    }


    func displayMenuScreen()
    {
        let menuSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let menuTVC = menuSB.instantiateViewController(withIdentifier: "MenuScreen") as! MenuTVC
        navigationController?.pushViewController(menuTVC, animated: true)
    }

    func displayRegisterScreen()
    {
        
        let registerSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)

        let registerVC = registerSB.instantiateViewController(withIdentifier: "RegistrationScreen") as! RegisterVC

        navigationController?.pushViewController(registerVC, animated: true)
    }
}
