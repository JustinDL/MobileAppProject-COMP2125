//
//  TableViewController.swift
//  MobileAppProject-COMP2125
//
//  Created by Justin Lucas on 2020-07-21.
//  Copyright © 2020 Birhanu Bishaw + Justin Lucas. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // define an array of values ..which you want to be displayed
    let productList = ["iPhone", "Galaxy", "Pixel3", "Vivo"]
    let priceList = ["1250.00", "1100.00", "899.00", "750.00"]
    let images = ["iPhone", "Samsung", "Pixel", "Vivo"]
    // outlets
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // return how many rows in the table
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return productList.count
    } // end func tableview
     // return the cell
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
     {

        let tempCell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        tempCell.ItemName.text = productList[indexPath.row]
        tempCell.ItemPrice.text = priceList[indexPath.row]
        tempCell.ItemPic.image = UIImage(named: images[indexPath.row] + ".jpg" )
        
        return tempCell
    } // end func tableView

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC:ProductDetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "ProductDetailViewController") as! ProductDetailViewController
       // assign the values to the local variable declared in ProductDetailViewController Class
        detailVC.itemName = productList[indexPath.row]
        detailVC.itemPrice = priceList[indexPath.row]
        detailVC.itemPic = UIImage(named: images[indexPath.row] + ".jpg" )!
        // make it navigate to ProductDetailViewController
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}
