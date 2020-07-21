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
    // name of listed item
    @IBOutlet weak var ItemName: UILabel!
    // price of listed item
    @IBOutlet weak var ItemPrice: UILabel!
    // one picture of listed item
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

