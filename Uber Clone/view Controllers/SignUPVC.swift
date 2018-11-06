//
//  SignUPVC.swift
//  Uber Clone
//
//  Created by Akshat Gupta on 06/09/18.
//  Copyright © 2018 coded. All rights reserved.
//

import UIKit

class SignUPVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  
}
extension SignUPVC : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
