//
//  ReceiptVC.swift
//  COBRA_CODERS
//
//  Created by MacStudent on 2018-03-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ReceiptVC: UIViewController
{
    @IBOutlet weak var cVIN: UITextField!
    @IBOutlet weak var cPlateNumber: UITextField!
    @IBOutlet weak var cParkingTime: UITextField!
    @IBOutlet weak var cardNumber: UITextField!
    @IBOutlet weak var custName: UITextField!
    @IBOutlet weak var cardType: UISegmentedControl!
    @IBOutlet weak var promoCode: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func btnPay(_ sender: UIButton)
    {
        self.writePropertyList()
    }
    
    @IBAction func btnReceipt(_ sender: UIButton)
    {
        let listSB = UIStoryboard(name: "Main", bundle: nil)
        let listVC = listSB.instantiateViewController(withIdentifier: "ReceiptVC")
        self.navigationController?.pushViewController(listVC, animated: true)
        
    }
    
    func writePropertyList()
    {
        let myReceipt = NSMutableDictionary()
        myReceipt["VIN"] = self.cVIN.text
        myReceipt["carPlateNumber"] = self.cPlateNumber.text
        myReceipt["carParkingTime"] = self.cParkingTime.text
        myReceipt["customerName"] = self.custName.text
        myReceipt["cardType"] = self.cardType
        myReceipt["promoCode"] = self.promoCode.text
        if let plistPath = Bundle.main.path(forResource: "Payment", ofType: "plist")
        {
            let carsplist = NSMutableArray(contentsOfFile: plistPath)
            carsplist?.add(myReceipt)
            if (carsplist?.write(toFile: plistPath, atomically: true))!
            {
                print("TOTAL CARLIST : \(String(describing: carsplist))")
            }
            
        }
            
        else
        {
            print("Unable to locate plist file")
        }
    
    }
}
