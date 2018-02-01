//
//  SecondViewController.swift
//  NoHouse
//
//  Created by Josh Cobert on 1/30/18.
//  Copyright © 2018 Jo and Co. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblCurrentUser: UILabel!
    
    var loginText : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblCurrentUser.text = "loginText"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
