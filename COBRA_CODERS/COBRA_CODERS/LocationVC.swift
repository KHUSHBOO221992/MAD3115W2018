//
//  LocationVC.swift
//  COBRA_CODERS
//
//  Created by MacStudent on 2018-03-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit
import Foundation
import MapKit

class LocationVC: UIViewController
{
    @IBOutlet weak var pLocation: MKMapView!
    
    var locationManager: CLLocationManager!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        if (CLLocationManager.locationServicesEnabled())
        {
            locationManager = CLLocationManager()
            locationManager.delegate = self as? CLLocationManagerDelegate
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
        }
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
