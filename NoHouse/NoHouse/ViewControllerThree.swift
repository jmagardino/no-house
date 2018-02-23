//
//  ViewControllerThree.swift
//  NoHouse
//
//  Created by Josh Cobert on 2/19/18.
//  Copyright © 2018 Jo and Co. All rights reserved.
//

import UIKit

class ViewControllerThree: UIViewController {

    @IBOutlet weak var btnSubmitBet: UIButton!
    @IBOutlet weak var sldWager: UISlider!
    @IBOutlet weak var lblWager: UILabel!
    @IBOutlet weak var segWager: UISegmentedControl!
    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var txtDescription: UITextField!
    
    var currentUser : Int = 0
    var wagerValue : Int = 5
    
    let userFirstName = ["Josh","Joe","Mike"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.isHidden = false
        
        lblWager.text = "$\(String(wagerValue))"
        
    }
    
// Select wager value via slider
    @IBAction func sldWager_Change(_ sender: Any) {
        wagerValue = Int(sldWager.value)
        lblWager.text = "$\(String(wagerValue))"
        segWager.selectedSegmentIndex = -1
    }
    
// Select predefined wager value
    @IBAction func segWager_Select(_ sender: Any) {
        wagerValue = (segWager.selectedSegmentIndex + 1) * 5
        lblWager.text = "$\(String(wagerValue))"
        sldWager.value = Float(wagerValue)
    }
    
// Prepare segues
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "submitNewBet" {
            let nextView = segue.destination as! BetsTableCtrl
            nextView.newWagerValue = wagerValue
            nextView.currentUser = currentUser
            nextView.betTitle = txtTitle.text!
            nextView.betDescription = txtDescription.text!
//            nextView.betList.append(String(wagerValue))
        }
    }
    
// Submit bet and switch to bet table view
    @IBAction func btnSubmitBet_Click(_ sender: Any) {
        
        performSegue(withIdentifier: "submitNewBet", sender: wagerValue)
    }

    
    
    
    
    
}
