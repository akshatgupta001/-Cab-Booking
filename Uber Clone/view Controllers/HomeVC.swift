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
    let defaults = UserDefaults.standard
   
    @IBOutlet weak var carSegmentControl: UISegmentedControl!
    @IBOutlet weak var destinationField: UITextField!
    
    @IBOutlet weak var findCab: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        destinationField.delegate = self
       
        
        let location = CLLocationCoordinate2DMake(28.750321, 77.117639)
        let span = MKCoordinateSpan.init(latitudeDelta: 0.003, longitudeDelta: 0.006)
        let region = MKCoordinateRegion.init(center: location, span: span)
        map.setRegion(region, animated: true)
        let dropPin = MKPointAnnotation()
        dropPin.coordinate = location
         dropPin.title = "Your Location"
        map.addAnnotation(dropPin)
        findCab.layer.cornerRadius = findCab.bounds.height/5
        // Do any additional setup after loading the view.
    }

    
    @IBAction func cabRequested(_ sender: Any) {
        if let carCode : Int  = carSegmentControl.selectedSegmentIndex{
            defaults.set(carCode, forKey: "carCode")
        }
    }
    func addMapAnnotation(location : CLLocationCoordinate2D,title :String) {
        let span : MKCoordinateSpan = MKCoordinateSpan.init(latitudeDelta: 0.0005, longitudeDelta: 0.0005)
       // let location : CLLocationCoordinate2D = CLLocationCoordinate2DMake(coordinate.latitude, coordinate.longitude)
        let region  = MKCoordinateRegion.init(center: location, span: span)
        self.map.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = title
        self.map.addAnnotation(annotation)
    }
 
}
extension HomeVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
