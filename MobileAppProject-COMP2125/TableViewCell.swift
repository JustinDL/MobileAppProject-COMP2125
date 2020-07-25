//
//  TableViewCell.swift
//  MobileAppProject-COMP2125
//
//  Created by Justin Lucas on 2020-07-21.
//  Copyright © 2020 Birhanu Bishaw + Justin Lucas. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    //inner cell outlets
    //
    @IBOutlet weak var ItemName: UILabel!
    
    @IBOutlet weak var ItemPrice: UILabel!
    
    @IBOutlet weak var ItemPic: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }// end func

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }// end func
    
    
    
    
}// end class

