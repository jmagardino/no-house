//
//  ViewControllerTwo.swift
//  NoHouse
//
//  Created by Josh Cobert on 2/1/18.
//  Copyright © 2018 Jo and Co. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController {
    
    @IBOutlet weak var btnLogout: UIButton!
    @IBOutlet weak var lblWelcome: UILabel!
    @IBOutlet weak var imgUserIcon: UIImageView!
    @IBOutlet weak var lblBalance: UILabel!
    @IBOutlet weak var btnNewBet: UIButton!

    
    let userName = ["josh","joe","mike"]
    
    var loginText : String = ""
    var rememberStatus : Bool = false
    var currentUser : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblWelcome.text = loginText
        imgUserIcon.image = UIImage(named: "user_icon_\(userName[currentUser]).jpg")        
        
    }


    
// Prepare segues
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "logout" {
            let nextView = segue.destination as! ViewController
            nextView.rememberMe = rememberStatus
            nextView.currentUserIndex = currentUser
        }
        else if segue.identifier == "newBet" {
            let nextView = segue.destination as! ViewControllerThree
            nextView.currentUser = currentUser
        }
    }
    
// Enter new bet proposal view
    @IBAction func btnNewBet_Click(_ sender: Any) {
        performSegue(withIdentifier: "newBet", sender: currentUser)
    }
    
// Logout
    @IBAction func btnLogout_Click(_ sender: Any) {
        performSegue(withIdentifier: "logout", sender: rememberStatus)
    }
}
