//
//  BetsTableCtrl.swift
//  NoHouse
//
//  Created by Josh Cobert on 2/20/18.
//  Copyright © 2018 Jo and Co. All rights reserved.
//

import UIKit

class BetsTableCtrl: UITableViewController {

    var betList : [String] = []
    var newWagerValue : Int = 0
    
    
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "tblRow", for: indexPath)
        cell.textLabel?.text = "$\(betList[indexPath.item])"
        return cell
    }


}
