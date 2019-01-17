//
//  ViewController.swift
//  Registration
//
//  Created by Emmanuel Christianos on 29/11/18.
//  Copyright © 2018 Emmanuel Christianos. All rights reserved.
//
import Parse
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var PhoneNum: UITextField!
    @IBOutlet weak var ID: UITextField!
    
    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var SignTsaId: UITextField!
    @IBOutlet weak var SignPhone: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

   
    @IBAction func SignUp(_ sender: Any) {
        
        let user = PFUser()
        
        let SName: String = Name.text!
        let SNum: String = SignPhone.text!
        let SEmail: String = Email.text!
        
        user.username = SName
        user.password = SNum
        
        user.signUpInBackground()
    }
    
    
    /*
    @IBAction func myMethod(_ sender: UIButton) {
        
        let user = PFUser()
        
        let SName: String = Name.text!
        let SNum: String = PhoneNum.text!
        let SID: String = ID.text!
        let SEmail: String = Email.text!
        
        
        if(SName.count > 0){
            
            user.username = SName
            user.signUpInBackground()
            
        } else if(SNum.count > 0){
            
            user["phone"] = PhoneNum
            user.signUpInBackground()
            
        } else if(SID.count > 0){
            
            user["TSAID"] = ID
            user.signUpInBackground()
            
        } else if(SEmail.count > 0){
            
            user["email"] = Email
            user.signUpInBackground()
        }
        
        // other fields can be set just like with PFObject
        //user["phone"] = "0429341997"
    }
    */
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
}

