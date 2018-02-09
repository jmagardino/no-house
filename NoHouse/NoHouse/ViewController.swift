//
//  ViewController.swift
//  NoHouse
//
//  Created by Joe and Co. on 1/7/18.
//  Copyright © 2018 Jo and Co. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let usrLoginList = ["josh","joe","mbl317"]
    let pwdLoginList = ["jc","jm","ml"]
    let userFirstName = ["Josh","Joe","Mike"]
    
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!    
    @IBOutlet weak var lblTestMessage: UILabel!
    @IBOutlet weak var tglRemember: UISwitch!
    
    var currentUserIndex : Int = 0
    var loginText : String = ""
    var rememberMe : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblTestMessage.text = ""
        
// Adds ability to dismiss keyboard
        let kbdToolbar = UIToolbar()
        let kbdDoneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector(self.kbdDone_Click))
        let flexSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        kbdToolbar.setItems([flexSpace, kbdDoneButton], animated: false)
        kbdToolbar.sizeToFit()
        txtUsername.inputAccessoryView = kbdToolbar
        txtPassword.inputAccessoryView = kbdToolbar
        
// Sets login fields to previous values, if remember me toggle was on prior to last login
        if rememberMe == true {
            txtUsername.text = usrLoginList[currentUserIndex]
            txtPassword.text = pwdLoginList[currentUserIndex]
            tglRemember.isOn = true
        }
    }
    @objc func kbdDone_Click() {
        view.endEditing(true)
    }
    
// Prepares values to send through segue to home page
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "loginToHomePage" {
            let nextView = segue.destination as! ViewControllerTwo
            nextView.loginText = loginText
            nextView.rememberStatus = tglRemember.isOn
            nextView.currentUser = currentUserIndex
        }
    }
    
// Login button action
    @IBAction func btnLogin_Click(_ sender: Any) {
        
        if let username = txtUsername.text, let password = txtPassword.text, let usrInt = usrLoginList.index(of: username), let pwdInt = pwdLoginList.index(of: password) {
            if usrInt == pwdInt {
                currentUserIndex = usrLoginList.index(of: username)!
                loginText = "Welcome \(userFirstName[currentUserIndex])!"
                performSegue(withIdentifier: "loginToHomePage", sender: loginText)
            }
        } else {
            lblTestMessage.text = "Invalid login"
        }
    }

    
    
    
}

