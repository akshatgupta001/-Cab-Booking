//
//  findCabVC.swift
//  Uber Clone
//
//  Created by Akshat Gupta on 04/10/18.
//  Copyright © 2018 coded. All rights reserved.
//

import UIKit

class findCabVC: UIViewController {
    @IBOutlet weak var driverNameLabel: UILabel!
    
    @IBOutlet weak var confirmBtn: UIButton!
    @IBOutlet weak var cancelBtn: UIButton!
    @IBOutlet weak var driverImgView: UIImageView!
    @IBOutlet weak var carNameLabel: UILabel!
    
    let driverImgs = [#imageLiteral(resourceName: "paaji"), #imageLiteral(resourceName: "driver2"),#imageLiteral(resourceName: "driver3")]
    let driverNames = ["Gurjeet Singh", "Amit Singh", "Andrew Murdock"]
    let carNames = ["WagonR", "Ertiga", "SWift Dzire"]
    
    @IBOutlet weak var Trip: UIButton!
    
    @IBAction func confirmBooking(_ sender: Any) {
        cabOnWay.isHidden = false
        confirmBtn.isHidden = true
        
    }
    @IBOutlet weak var cabOnWay: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let carCode = UserDefaults.standard.integer(forKey: "carCode") 
//       let randomInt = Int(arc4random_uniform(3))
       driverNameLabel.text = driverNames[carCode]
        driverImgView.image = driverImgs[carCode]
        carNameLabel.text = carNames[carCode]
        // Do any additional setup after loading the view.
    }

    @IBAction func cancelTrip(_ sender: Any) {
        let alert = UIAlertController(title: "Cab Cancel Confirmed", message: "Reason for cancelling the cab?", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Plan changed", style: .default, handler: { (action) in
            
            self.dismiss(animated: true, completion: nil)
        }))
        alert.addAction(UIAlertAction(title: "Driver taking too long", style: .default, handler: { (action) in
            self.dismiss(animated: true, completion: nil)
        }))
        alert.addAction(UIAlertAction(title: "Reason not listed", style: .default, handler: { (action) in
            self.dismiss(animated: true, completion: nil)
        }))
        alert.addAction(UIAlertAction(title: "Booked another cab", style: .default, handler: { (action) in
            self.dismiss(animated: true, completion: nil)
        }))
        
        
        self.present(alert, animated: true)
    }
    
    @IBAction func tripPressed(_ sender: Any) {
        if  Trip.title(for: .normal) == "Start Trip"{
           cancelBtn.isEnabled = false
            Trip.setTitle("End Trip", for: .normal)
            cabOnWay.text = "Your ride has started."
        }else{
            performSegue(withIdentifier: "showPaymentVC", sender: self)
        }
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
