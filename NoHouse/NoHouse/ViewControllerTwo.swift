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
    var loginText : String = ""
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        lblWelcome.text = loginText
        
    }

    
    @IBAction func btnLogout_Click(_ sender: Any) {
        
        performSegue(withIdentifier: "logout", sender: self)
        
    }
    

}
