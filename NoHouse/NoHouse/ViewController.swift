//
//  ViewController.swift
//  NoHouse
//
//  Created by Joe and Co. on 1/7/18.
//  Copyright © 2018 Jo and Co. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    var username = ""
//    var password = ""
    
    let userJosh = "josh"
    let passJosh = "admin"
    let userJoe = "joe"
    let passJoe = "admin"
    
    // OUTLETS
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!    
    @IBOutlet weak var lblTestMessage: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // USERNAME ENTERED INTO TEXT BOX
    @IBAction func txtUsername_Enter(_ sender: Any) {
    }
    
    // PASSWORD ENTERED INTO TEXT BOX
    @IBAction func txtPassword_Enter(_ sender: Any) {
    }
    
    // SUBMIT BUTTON PRESS
    @IBAction func btnLogin_Click(_ sender: Any) {
        
        if let username = txtUsername.text, let password = txtPassword.text {
            if ((username == userJosh && password == passJosh) || (username == userJoe && password == passJoe)) {
                lblTestMessage.text = "Now logged in as \(username)"
            } else {
                lblTestMessage.text = "Invalid login"
            }
        } else {
            print("break: text field nil")
        }
    }

    
    
    
    
    
}

