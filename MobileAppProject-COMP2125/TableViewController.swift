//
//  TableViewController.swift
//  MobileAppProject-COMP2125
//
//  Created by Justin Lucas on 2020-07-21.
//  Copyright © 2020 Birhanu Bishaw + Justin Lucas. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    // define an array of values ..which you want to be displayed
    var productList = ["iPhone", "Galaxy", "Pixel3", "Vivo"]
    var priceList = ["$1250.00", "$1100.00", "$899.00", "$750.00"]
    var images = ["iPhone", "Samsung", "Pixel", "Vivo"]
    var sellName = ["Justin", "Birhanu", "Sujeet", "Anon"]
    var sellNum = ["123-456-7890", "123-456-0987", "123-654-7890", "123-654-0987"]
    var sellLat = [44.33, 44.38, 43.69, 43.63]
    var sellLong = [-79.69, -79.68, -79.57, -79.38]
    // outlets
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // return how many rows in the table
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return productList.count
    } // end func tableview
     // return the cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let tempCell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        tempCell.ItemName.text = productList[indexPath.row]
        tempCell.ItemPrice.text = priceList[indexPath.row]
        tempCell.ItemPic.image = UIImage(named: images[indexPath.row] + ".jpg" )
        
        return tempCell
    } // end func tableView

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC:ProductDetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "ProductDetailViewController") as! ProductDetailViewController
       // assign the values to the local variable declared in ProductDetailViewController Class
        detailVC.itemName = productList[indexPath.row]
        detailVC.itemPrice = priceList[indexPath.row]
        detailVC.itemPic = UIImage(named: images[indexPath.row] + ".jpg" )!
        detailVC.sellerName = sellName[indexPath.row]
        detailVC.sellerNum = sellNum[indexPath.row]
        detailVC.sellerLat = sellLat[indexPath.row]
        detailVC.sellerLong = sellLong[indexPath.row]
        // make it navigate to ProductDetailViewController
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}
