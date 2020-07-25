//
//  LoginViewController.swift
//  MobileAppProject-COMP2125
//
//  Created by Birhanu Bishaw on 2020-07-23.
//  Copyright © 2020 Birhanu Bishaw + Justin Lucas. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    // outlets
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var labelOutput: UILabel!
    
    // local variables
    var uName:String = "u"
    var pWord:String = "p"
    var messageU:String = ""
    var messageP:String = ""
    var message:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // actions
    @IBAction func btnLoginTapped(_ sender: UIButton) {
        uName = (txtUsername.text!)
        pWord = (txtPassword.text!)
        if(uName.count > 1) {
            if(pWord.count > 3) {
                let catVC = self.storyboard?.instantiateViewController(withIdentifier:"CatViewController") as! CatViewController
                self.navigationController?.pushViewController(catVC, animated: true)
                catVC.user = txtUsername.text! + "!"
            }
            else {
                messageP = "Invalid password!"
            }
        }
            else {
                messageU = "Invalid user name!"
            }
        message = messageU + messageP
        labelOutput.text = String(message)
        messageP = ""
        messageU = ""
    }
    
    @IBAction func btnRegTapped(_ sender: UIButton) {
        let regVC = self.storyboard?.instantiateViewController(withIdentifier:"RegViewController") as! RegViewController
        self.navigationController?.pushViewController(regVC, animated: true)
    }
}