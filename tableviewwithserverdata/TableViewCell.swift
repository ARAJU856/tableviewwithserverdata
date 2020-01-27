//
//  TableViewCell.swift
//  tableviewwithserverdata
//
//  Created by A RAJU on 1/8/20.
//  Copyright © 2020 A RAJU. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
      
    @IBOutlet weak var lblname: UILabel!
    
    @IBOutlet weak var lblCapital: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
