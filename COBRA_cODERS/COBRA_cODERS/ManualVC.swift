//
//  ManualVC.swift
//  NRK_PARKING
//
//  Created by MacStudent on 2018-03-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit
import WebKit

class ManualVC: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadWebPage()
        //loadManualPage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /* func loadWebPage()
     {
        let url = URL (string: "https://www.google.com");
        let requestObj = URLRequest(url: url!);
        myWebView.load(requestObj);
    }
    
    func loadManualPage()
     {
        let localfilePath = Bundle.main.url(forResource: "Manual", withExtension: "html");
        let myRequest = URLRequest(url: localfilePath!);
        myWebView.load(myRequest);
    }
    */
     
     func loadWebPage(){
     let url = NSURL (string: "https://www.google.com");
     let requestObj = NSURLRequest(url: url! as URL);
     myWebView.loadRequest(requestObj as URLRequest);
     
     }
     
     func loadManualPage(){
     let localfilePath = Bundle.main.url(forResource: "Manual", withExtension: "html");
     let myRequest = NSURLRequest(url: localfilePath!);
     myWebView.loadRequest(myRequest as URLRequest);
     }
     
    


}
