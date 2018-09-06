//
//  HomeVC.swift
//  Uber Clone
//
//  Created by Akshat Gupta on 06/09/18.
//  Copyright © 2018 coded. All rights reserved.
//

import UIKit
import MapKit
class HomeVC: UIViewController {
    @IBOutlet weak var map: MKMapView!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let location = CLLocationCoordinate2DMake(28.708883, 77.112652)
        let span = MKCoordinateSpanMake(0.003, 0.006)
        let region = MKCoordinateRegionMake(location, span)
        map.setRegion(region, animated: true)
        let dropPin = MKPointAnnotation()
        dropPin.coordinate = location
         dropPin.title = "Your Location"
        map.addAnnotation(dropPin)
        // Do any additional setup after loading the view.
    }

    func addMapAnnotation(location : CLLocationCoordinate2D,title :String) {
        let span : MKCoordinateSpan = MKCoordinateSpanMake(0.0005, 0.0005)
       // let location : CLLocationCoordinate2D = CLLocationCoordinate2DMake(coordinate.latitude, coordinate.longitude)
        let region  = MKCoordinateRegionMake(location, span)
        self.map.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = title
        self.map.addAnnotation(annotation)
    }
 
}
