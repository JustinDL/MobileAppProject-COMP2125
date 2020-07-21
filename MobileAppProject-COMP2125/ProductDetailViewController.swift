//
//  ProductDetailViewController.swift
//  MobileAppProject-COMP2125
//
//  Created by Justin Lucas on 2020-07-21.
//  Copyright © 2020 Birhanu Bishaw + Justin Lucas. All rights reserved.
//

import UIKit

class ProductDetailViewController: UIViewController {

    // outlets
    // name of item
    @IBOutlet weak var ItemName: UILabel!
    // price of item
    @IBOutlet weak var ItemPrice: UILabel!
    // picture of item
    @IBOutlet weak var ItemPic: UIImageView!
    // name of seller
    @IBOutlet weak var SellerName: UILabel!
    // phone number of seller
    @IBOutlet weak var SellerNum: UILabel!
    
    
    // local variables
    var itemName:String!
    var itemPrice:String!
    var itemPic:UIImage!
    var sellerName:String!
    var sellerNum:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set outlets to given variable values
        ItemName.text = itemName
        ItemPrice.text = itemPrice
        ItemPic.image = itemPic
        SellerName.text = sellerName
        SellerNum.text = sellerNum
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
