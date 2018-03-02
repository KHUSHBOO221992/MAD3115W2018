//
//  LoginVC.swift
//  NRK_PARKING
//
//  Created by MacStudent on 2018-02-26.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var txtEmail: UITextField!

    @IBOutlet weak var txtPassword: UITextField!

    @IBOutlet weak var switchRemember: UISwitch!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated:Bool) {

        self.txtEmail.text = ""
        self.txtPassword.text = ""

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnGoAction(_ sender: UIBarButtonItem) {
        if authenicateUser() {
            displayMenuScreen()
        }
        else{
            //get an instance of AlertController
            let infoAlert = UIAlertController(title: "Incorrect Data", message: "Email or Password incorrect...Please retry", preferredStyle: .alert)

            //add Retry button
            infoAlert.addAction(UIAlertAction(title: NSLocalizedString("Retry", comment: "Default action"), style: .destructive, handler: nil))

            //display an alert
            self.present(infoAlert, animated: true, completion: nil)
        }
    }

    @IBAction func btnLoginAction(_ sender: UIButton) {
        let Email = txtEmail.text
        let Password = txtPassword.text
        
        if (Email == "KHUSHBOO" && Password == "BHATOIA"){
            
            let infoAlert = UIAlertController(title: "AUTHENTICATED", message: "CONGRATULATION", preferredStyle: .alert)
            
            infoAlert.addAction(UIAlertAction(title: "GOOD", style: .default, handler: nil))
            
            self.present(infoAlert, animated: true, completion: nil)
            
        }
    }
    

    @IBAction func switchRememberAction(_ sender: UISwitch) {
        if self.switchRemember.isOn {
            let saveAlert = UIAlertController(title: "Saved", message: "Your data is saved", preferredStyle: .alert)

            saveAlert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Data saved"), style: .default, handler: nil))


            self.present(saveAlert, animated: true, completion: nil)
        }
    }


    @IBAction func btnRegisterAction(_ sender: UIBarButtonItem) {
        displayRegisterScreen()
    }



    func authenicateUser() -> Bool{
        if (txtEmail.text == "KHUSHBOO" && txtPassword.text == "BHATOIA"){
            return true
        }
        else{
            return false
        }
    }


    func displayMenuScreen() {
        let menuSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let menuVC = menuSB.instantiateViewController(withIdentifier: "MenuScreen")
        navigationController?.pushViewController(menuVC, animated: true)
    }

    func displayRegisterScreen(){
        //transfer to next screen

        //get an instance of storyboard
        let registerSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)

        //create an instance of next view controller
        let registerVC = registerSB.instantiateViewController(withIdentifier: "registrationScreen") as! RegisterVC

        //launch the next view controller to navigation controller
        navigationController?.pushViewController(registerVC, animated: true)
    }
}
