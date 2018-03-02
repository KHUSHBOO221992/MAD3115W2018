//
//  REGISTER.swift
//  NRK_PARKING
//
//  Created by MacStudent on 2018-02-22.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController {
    
    @IBOutlet var txtName: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "REGISTER"
        
        let btnSubmit = UIBarButtonItem(title: "SUBMIT", style: .plain, target: self, action: #selector(displayValues))
        
        self.navigationItem.rightBarButtonItem = btnSubmit
    }
    
    @objc private func displayValues(){
        let infoAlert = UIAlertController(title: "ALERT: VERIFY", message: "PLEASE CHECHKOUT YOUR DETAILS ONCE AGAIN", preferredStyle: .alert)
        infoAlert.addAction(UIAlertAction(title: "CONFIRM", style: .default, handler: {_ in self.displayWelcomeScreen()}))
        
        self.present(infoAlert, animated: true)
    }
    
    func displayWelcomeScreen(){
        let welcomeSB: UIStoryboard = UIStoryboard(name: "MAIN", bundle: nil)
        let welcomeVC = welcomeSB.instantiateViewController(withIdentifier: "GO TO WELCOME SACREEN") as! WelcomeVC
        
        
        welcomeVC.welcomeTitle = txtName.text!
        navigationController?.pushViewController(welcomeVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
