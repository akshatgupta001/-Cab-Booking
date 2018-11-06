//
//  FeedbackVC.swift
//  Uber Clone
//
//  Created by Akshat Gupta on 25/10/18.
//  Copyright © 2018 coded. All rights reserved.
//

import UIKit

class FeedbackVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
extension FeedbackVC : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
