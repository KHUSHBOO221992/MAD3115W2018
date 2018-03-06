//
//  LocationVC.swift
//  NRK_PARKING
//
//  Created by MacStudent on 2018-03-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit
import Foundation
import MapKit

class ViewController: UIViewController {
    

    @IBOutlet weak var pLocation: MKMapView!
    
    
/*    let shoppersWorldLocation = CLLocation(latitude : 43.773557, longitude: -79.34555)
    
    
    
    // portion of distinct we want to show
    let regionRadius: CLLocationAccuracy = 500
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        MK.mapType = MKMapType.standard
        
        
        centerMapOnLocation(Location:  shoppersWorldLocation, title: "shoppersWorld", subtitle: "Brampton")
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //centre map on specific locatiobns
    
    func centerMapOnLocation(Location: CLLocation, title: String, subtitle: String){
        //get location cordinates
        
        let cordinateRegion = MKCoordinateRegionMakeWithDistance(Location.coordinate,regionRadius,regionRadius)
        
        //focus the map on specific location
        MK.setRegion(cordinateRegion,animated: true)
        
        
        //drop a pin at user's current location
        let myAnnotation: MKPointAnnotation = MKPointAnnotation()
        myAnnotation.coordinate = CLLocationCoordinate2DMake(Location.coordinate.latitude, Location.coordinate.longitude);
        
        myAnnotation.title = title
        myAnnotation.subtitle = subtitle
        
        //  display pin on loacation
        
        MK.addAnnotation(myAnnotation)
        
    }
}
 */

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

