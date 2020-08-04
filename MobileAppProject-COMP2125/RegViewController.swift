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
    
    // variables to store user information (in lieu of database for now)
    var userDict = [String:Any]()
    var userArray = [[String:String]]()
    // local variables
    var fName:String = ""
    var email:String = ""
    var street:String = ""
    var poCode:String = ""
    var userName:String = ""
    var password:String = ""
    var regFn:String = ""
    var regEmail:String = ""
    var regSt:String = ""
    var regPo:String = ""
    var regUn:String = ""
    var regPw:String = ""
    var regMessage:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // actions
    @IBAction func btnSubmitTapped(_ sender: UIButton) {
        
        fName = (txtFullName.text!)
        email = (txtEmail.text!)
        street = (txtStreet.text!)
        poCode = (txtPostalCode.text!)
        userName = (txtUName.text!)
        password = (txtPword.text!)
        // validate each input one by one, display the error if there is any, and clear the erroneous field
        if(fName.contains(" ")) {
            if(fName.contains(" ") && fName.count > 4) {
                if(email.contains("@mygeorgian.ca") || email.contains("@student.georgianc.on.ca")) {
                    if(street.count > 5) {
                        if((poCode.contains(" ") && poCode.count == 7) || (!poCode.contains(" ") && poCode.count == 6)) {
                            if (userName.count > 1) {
                                if (password.count > 5) {
                                    // save users in an array, each user info as dictionary
                                    userDict = [:]
                                    userDict.updateValue(fName, forKey: "full name")
                                    userDict.updateValue(email, forKey: "email")
                                    userDict.updateValue(street, forKey: "street")
                                    userDict.updateValue(poCode, forKey: "postal code")
                                    userDict.updateValue(userName, forKey: "user name")
                                    userDict.updateValue(password, forKey: "password")
                                    userArray.append(userDict as! [String : String])
                                    //print(userArray) //to debug
                                    // redirect user back to login page to sign in
                                    let loginVC = self.storyboard?.instantiateViewController(withIdentifier:"LoginViewController") as! LoginViewController
                                    // pass registered users array
                                    loginVC.regUsers = userArray
                                     self.navigationController?.pushViewController(loginVC, animated: true)
                                }
                                else {
                                    regPw = "Invalid password"
                                    txtPword.text=""
                                }
                            }
                            else {
                                regUn = "Invalid user name"
                                txtUName.text = ""
                            }
                        }
                        else {
                            regPo = "Invalid postal code"
                            txtPostalCode.text = ""
                        }
                    }
                    else {
                        regSt = "Invalid street"
                        txtStreet.text = ""
                    }
                }
                else {
                    regEmail = "Georgian student email required"
                    txtEmail.text = ""
                }
            }
            else {
                regFn = "Invalid name"
                txtFullName.text = ""
            }
        }
        else {
            regFn = "Please provide full name"
            txtFullName.text = ""
        }

        // clear user information once they navigate away from the page
        regMessage = regFn + regEmail + regSt + regPo + regUn + regPw
        if(regMessage == "") {
            txtFullName.text = ""
            txtEmail.text = ""
            txtStreet.text = ""
            txtPostalCode.text = ""
            txtUName.text = ""
            txtPword.text = ""
        }
        // show error message and clear error fields for subsequent messages
        labelRegOutput.text = String(regMessage)
        regFn = ""
        regEmail = ""
        regSt = ""
        regPo = ""
        regUn = ""
        regPw = ""
    }
}
