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
    @IBOutlet weak var lblBalance: UILabel!
    @IBOutlet weak var homePageTabBar: UITabBar!
    @IBOutlet weak var tabBar1: UITabBarItem!
    @IBOutlet weak var tabBar2: UITabBarItem!
    
    var loginText : String = ""
    var rememberStatus : Bool = false
    var currentUser : Int = 0
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        lblWelcome.text = loginText
        homePageTabBar.selectedItem = tabBar1
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "logout" {
            let nextView = segue.destination as! ViewController
            nextView.rememberMe = rememberStatus
            nextView.currentUserIndex = currentUser
        }
    }
    
    @IBAction func btnLogout_Click(_ sender: Any) {
        
        performSegue(withIdentifier: "logout", sender: rememberStatus)
        
    }
    

}
