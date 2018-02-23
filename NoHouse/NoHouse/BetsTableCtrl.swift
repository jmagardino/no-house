//
//  BetsTableCtrl.swift
//  NoHouse
//
//  Created by Josh Cobert on 2/20/18.
//  Copyright © 2018 Jo and Co. All rights reserved.
//

import UIKit

class BetsTableCtrl: UITableViewController {

    let userName = ["josh","joe","mike"]
    var currentUser: Int = 0
    var betList : [String] = []
    var newWagerValue : Int = 0    
    var betTitle: String = ""
    var betDescription: String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if betList[0] == "" {
//            betList.removeAll()
//        }
        betList.append(String(newWagerValue))
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return betList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "tblRow", for: indexPath) as? TableViewCell else {
            fatalError("The dequeued cell is not an instance of TableViewCell.")
        }
//        cell.textLabel?.text = "$\(betList[indexPath.item])"
        
        cell.lblWager.text = "$\(betList[indexPath.item])"
        cell.imgUser.image = UIImage(named: "user_icon_\(userName[currentUser]).jpg")
        cell.lblTitle.text = betTitle
        cell.lblDescription.text = betDescription
        
        return cell
    }


}
