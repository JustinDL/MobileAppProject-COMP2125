//
//  ListViewController.swift
//  MobileAppProject-COMP2125
//
//  Created by Birhanu Bishaw on 2020-07-24.
//  Copyright © 2020 Birhanu Bishaw + Justin Lucas. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var itemName: UITextField!
    
    @IBOutlet weak var itemPrice: UITextField!
    
    // local variables
    var iname: String!
    var iprice: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func submitBtn(_ sender: UIButton) {
        
        iname = itemName.text!
        iprice = itemPrice.text!
        
        let listVC = self.storyboard?.instantiateViewController(withIdentifier:"TableViewController") as! TableViewController
        
        listVC.productList.append(iname)
        listVC.priceList.append(iprice)
        self.navigationController?.pushViewController(listVC, animated: true)
        
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
