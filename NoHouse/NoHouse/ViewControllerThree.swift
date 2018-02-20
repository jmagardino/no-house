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
    
    var currentUser : Int = 0
    var wagerValue : Int = 5
    
    let userFirstName = ["Josh","Joe","Mike"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
            let nextView = segue.destination as! ViewControllerFour
            nextView.newWagerValue = wagerValue
        }
    }
    
// Submit bet and switch to bet table view
    @IBAction func btnSubmitBet_Click(_ sender: Any) {
        performSegue(withIdentifier: "submitNewBet", sender: wagerValue)
    }

    
    
    
    
    
}
