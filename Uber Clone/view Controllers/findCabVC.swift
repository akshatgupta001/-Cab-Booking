//
//  findCabVC.swift
//  Uber Clone
//
//  Created by Akshat Gupta on 04/10/18.
//  Copyright © 2018 coded. All rights reserved.
//

import UIKit

class findCabVC: UIViewController {

    @IBOutlet weak var Trip: UIButton!
    
    @IBAction func confirmBooking(_ sender: Any) {
        cabOnWay.isHidden = false
        
    }
    @IBOutlet weak var cabOnWay: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
 
        // Do any additional setup after loading the view.
    }

    @IBAction func tripPressed(_ sender: Any) {
        if  Trip.title(for: .normal) == "Start Trip"{
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
