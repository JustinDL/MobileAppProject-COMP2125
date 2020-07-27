//
//  CatTableViewController.swift
//  MobileAppProject-COMP2125
//
//  Created by Birhanu Bishaw on 2020-07-26.
//  Copyright © 2020 Birhanu Bishaw + Justin Lucas. All rights reserved.
//

import UIKit

class CatTableViewController: UITableViewController {

    // define an array of values ..which you want to be displayed
        let catList = ["Textbooks", "Electronics", "Furniture", "Cars","Tutors", "Room rental", "Free items"]
        //let priceList = ["1250.00", "1100.00", "899.00", "750.00"]
        //let images = ["iPhone", "Samsung", "Pixel", "Vivo"]
        //let sellName = ["Justin", "Birhanu", "Sujeet", "Anon"]
        //let sellNum = ["123-456-7890", "123-456-0987", "123-654-7890", "123-654-0987"]

        // outlets
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }

        // return how many rows in the table
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            return catList.count
        } // end func tableview
         // return the cell
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
        {
            let tempCell:CatTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CatTableViewCell
            tempCell.labelCategory.text = catList[indexPath.row]
            //tempCell.pr.text = priceList[indexPath.row]
            //tempCell.ima.image = UIImage(named: images[indexPath.row] + ".jpg" )
            
            return tempCell
        } // end func tableView

        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let listVC:TableViewController = self.storyboard?.instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
            self.navigationController?.pushViewController(listVC, animated: true)
    }
}
