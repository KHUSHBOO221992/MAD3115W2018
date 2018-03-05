//
//  ContactDetailVC.swift
//  DAY9_2MAR
//
//  Created by MacStudent on 2018-03-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit
import CallKit
import MessageUI

class ContactDetailVC: UIViewController {
    
    var contactNumber : String = ""
    var contactName : String = ""
    var contactEmail : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnCallAction(_ sender: UIButton)
    {
        print("Calling....")
        let url = URL(string: "tel://+11231231231")
        
        if UIApplication.shared.canOpenURL(url!)
        {
            if #available(iOS 10, *)
            {
                UIApplication.shared.open(url!)
            }
            else
            {
                UIApplication.shared.openURL(url!)
            }
        }
    }
    
    
    @IBAction func btnTextAction(_ sender: UIButton)
    {
        print("Messaging.......")
        if MFMessageComposeViewController.canSendText()
        {
        let messageVC = MFMessageComposeViewController()
            messageVC.body = ".....kiwe aa?"
            messageVC.recipients = ["+11231231231"]
            messageVC.messageComposeDelegate = self as?MFMessageComposeViewControllerDelegate
        self.present(messageVC,animated: true,completion: nil)
        }
    }
    
 
    @IBAction func btnEmailAction(_ sender: UIButton)
    {
        print("Sending E-Mail........")
        if MFMailComposeViewController.canSendMail()
        {
            let EmailPicker = MFMailComposeViewController()
            
            EmailPicker.mailComposeDelegate = self as? MFMailComposeViewControllerDelegate
            EmailPicker.setSubject("Test Email")
            EmailPicker.setMessageBody("ki haal chaal", isHTML: true)
            
            self.present(EmailPicker, animated: true,completion: nil)
        }
        else
        {
            print("Can,t Send E-Mail.....!")
        }
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
extension ContactDetailVC:  MFMailComposeViewControllerDelegate{
    func mailComposeController(controller: MFMailComposeViewController,didFinishWithResult result: MFMailComposeResult,error: NSError?)
    {
        controller.dismiss(animated: true, completion: nil)
    }
}
