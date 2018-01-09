//
//  ViewController.swift
//  NoHouse
//
//  Created by Joe and Co. on 1/7/18.
//  Copyright © 2018 Jo and Co. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let userJosh = "josh"
    let passJosh = "admin"
    let userJoe = "joe"
    let passJoe = "admin"
    
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!    
    @IBOutlet weak var lblTestMessage: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Adds ability to dismiss keyboard
        let kbdToolbar = UIToolbar()
        
        let kbdDoneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector(self.kbdDone_Click))
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        
        kbdToolbar.setItems([flexSpace, kbdDoneButton], animated: true)
        kbdToolbar.sizeToFit()
        
        txtUsername.inputAccessoryView = kbdToolbar
        txtPassword.inputAccessoryView = kbdToolbar
    }
    
    @objc func kbdDone_Click() {
        view.endEditing(true)
    }

    
    // Login button action
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

