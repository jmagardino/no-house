//
//  ViewController.swift
//  NoHouse
//
//  Created by Joe and Co. on 1/7/18.
//  Copyright © 2018 Jo and Co. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let userLoginList : Array = ["josh","joe","mbl317"]
    let pwdLoginList : Array = ["jc","jm","ml"]
    let userList : Array = ["Josh","Joe","Mike"]
    
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!    
    @IBOutlet weak var lblTestMessage: UILabel!
    @IBOutlet weak var rememberMeToggle: UISwitch!
    
    var currentUser : Int = 0
    var loginText : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
// Adds ability to dismiss keyboard
        let kbdToolbar = UIToolbar()
        let kbdDoneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector(self.kbdDone_Click))
        let flexSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        
        kbdToolbar.setItems([flexSpace, kbdDoneButton], animated: false)
        kbdToolbar.sizeToFit()
        
        txtUsername.inputAccessoryView = kbdToolbar
        txtPassword.inputAccessoryView = kbdToolbar
    }
    
    @objc func kbdDone_Click() {
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "loginToMainPage" {
            let nextView = segue.destination as! ViewControllerTwo
            nextView.loginText = loginText
        }
    }
    
// Login button action
    @IBAction func btnLogin_Click(_ sender: Any) {
        
        if let username = txtUsername.text, let password = txtPassword.text, let usrInt = userLoginList.index(of: username), let pwdInt = pwdLoginList.index(of: password) {
            if usrInt == pwdInt {
                currentUser = userLoginList.index(of: username)!
                loginText = "Welcome \(userList[currentUser])!"
                performSegue(withIdentifier: "loginToMainPage", sender: loginText)
            }
        } else {
            lblTestMessage.text = "Invalid login"
        }
    }

    
    
    
}

