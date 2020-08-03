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
    var regUsers = [[String:String]]()
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
        uName = txtUsername.text!
        pWord = txtPassword.text!
        var t:Int = -1
        //print(regUsers)
        for i in 0..<regUsers.count {
        // check if the user name exists
            if(uName == (regUsers[i]["user name"]!)) {
                t = i
            }
        }
        if(t != -1) {
            // check if password matches the username
            if(pWord == (regUsers[t]["password"]!)) {
                let catVC = self.storyboard?.instantiateViewController(withIdentifier:"CatTableViewController") as! CatTableViewController
                    self.navigationController?.pushViewController(catVC, animated: true)
            }
            else {
                messageP = "Invalid password!"
                txtPassword.text = ""
            }
        }
        else {
            messageU = "Invalid user name!"
            txtUsername.text = ""
            txtPassword.text = ""
        }
        message = messageU + messageP
        // clear user credentials once they navigates away from the page
        if(message == ""){
            txtUsername.text = ""
            txtPassword.text = ""
        }
        // show error message and clear error fields for subsequent messages
        labelOutput.text = String(message)
        messageP = ""
        messageU = ""
    }
    
    @IBAction func btnRegTapped(_ sender: UIButton) {
        labelOutput.text = ""
        let regVC = self.storyboard?.instantiateViewController(withIdentifier:"RegViewController") as! RegViewController
        self.navigationController?.pushViewController(regVC, animated: true)
        regVC.userArray = regUsers
        txtUsername.text = ""
        txtPassword.text = ""
    }
}
