//
//  TableViewCell.swift
//  NoHouse
//
//  Created by Josh Cobert on 2/19/18.
//  Copyright © 2018 Jo and Co. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    //MARK: Properties
    @IBOutlet weak var imgUser: UIImageView!
    @IBOutlet weak var lblWager: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
