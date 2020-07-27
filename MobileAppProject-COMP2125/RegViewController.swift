//
//  RegViewController.swift
//  MobileAppProject-COMP2125
//
//  Created by Birhanu Bishaw on 2020-07-23.
//  Copyright © 2020 Birhanu Bishaw + Justin Lucas. All rights reserved.
//

import UIKit

class RegViewController: UIViewController {
    
    // outlets
    @IBOutlet weak var txtFullName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtStreet: UITextField!
    @IBOutlet weak var txtPostalCode: UITextField!
    @IBOutlet weak var txtUName: UITextField!
    @IBOutlet weak var txtPword: UITextField!
    @IBOutlet weak var labelRegOutput: UILabel!
    
    // local variables
    var email:String = ""
    var regEmail:String = ""
    var regMessage:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    // actions
    @IBAction func btnSubmitTapped(_ sender: UIButton) {
        email = (txtEmail.text!)
        if(!email.contains("@mygeorgian.ca") && !email.contains("@student.georgianc.on.ca")) {
            regEmail = "Invalid email!"
        }
        else {
            let catVC = self.storyboard?.instantiateViewController(withIdentifier:"CatTableViewController") as! CatTableViewController
            self.navigationController?.pushViewController(catVC, animated: true)
            //catVC.user = txtUName.text! + "!"
        }
        // clear user information once they navigate away from the page
        regMessage = regEmail
        if(regMessage==""){
            txtFullName.text = ""
            txtEmail.text = ""
            txtStreet.text = ""
            txtPostalCode.text = ""
            txtUName.text = ""
            txtPword.text = ""
        }
        labelRegOutput.text = String(regMessage)
        regEmail = ""
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
