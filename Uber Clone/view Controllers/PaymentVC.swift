//
//  PaymentVC.swift
//  Uber Clone
//
//  Created by Akshat Gupta on 25/10/18.
//  Copyright © 2018 coded. All rights reserved.
//


import UIKit

class PaymentVC: UIViewController {

    @IBOutlet weak var PaymentBtn: UIButton!
    @IBOutlet weak var paytmView: UIView!
    @IBOutlet weak var cashView: UIView!
    @IBOutlet weak var cashImg: UIImageView!
    @IBOutlet weak var paytmImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap1 = UITapGestureRecognizer(target: self, action: #selector(tapCash))
        cashView.addGestureRecognizer(tap1)
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(tapPaytm))
        paytmView.addGestureRecognizer(tap2)
        cashView.layer.cornerRadius = cashView.bounds.height/8
        paytmView.layer.cornerRadius = paytmView.bounds.height/8
        // Do any additional setup after loading the view.
        PaymentBtn.isEnabled = false
    }
    @objc func tapCash(sender : UITapGestureRecognizer){
        cashImg.image = #imageLiteral(resourceName: "ic_radio_on")
       PaymentBtn.isEnabled = true
        paytmImg.image = #imageLiteral(resourceName: "ic_radiooff")
    }
    @objc func tapPaytm(sender : UITapGestureRecognizer){
        cashImg.image = #imageLiteral(resourceName: "ic_radiooff")
        PaymentBtn.isEnabled = true
        paytmImg.image = #imageLiteral(resourceName: "ic_radio_on")
    }
    @IBAction func makePayment(_ sender: Any) {
        performSegue(withIdentifier: "showFeedbackVC", sender: self)
    }
    

}
