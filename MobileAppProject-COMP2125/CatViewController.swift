//
//  CatViewController.swift
//  MobileAppProject-COMP2125
//
//  Created by Birhanu Bishaw on 2020-07-24.
//  Copyright © 2020 Birhanu Bishaw + Justin Lucas. All rights reserved.
//

import UIKit

class CatViewController: UIViewController {

    @IBOutlet weak var labelUser: UILabel!
    
    var user:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        labelUser.text = user;
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
