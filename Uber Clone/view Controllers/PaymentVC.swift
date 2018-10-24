//
//  PaymentVC.swift
//  Uber Clone
//
//  Created by Akshat Gupta on 25/10/18.
//  Copyright © 2018 coded. All rights reserved.
//

import UIKit

class PaymentVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func makePayment(_ sender: Any) {
        performSegue(withIdentifier: "showFeedbackVC", sender: self)
    }
    

}
