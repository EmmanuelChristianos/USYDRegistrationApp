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
    
    let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
    
    @IBOutlet weak var rectangle: UIView!
   
    
    
    @IBOutlet weak var PhoneNum: UITextField!
    @IBOutlet weak var ID: UITextField!
    
    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var SignTsaId: UITextField!
    @IBOutlet weak var SignPhone: UITextField!
    
    @IBAction func Login(_ sender: Any) {
    }
    
    
    @IBAction func SignUp(_ sender: Any) {
        
        //Creating the User
        let member = PFObject(className:"Members")
        
        //Assigning textfeild values to variables
        let SName: String = Name.text!
        let SSignPhone: String = SignPhone.text!
        let SEmail: String = Email.text!
        let SSignTsaId: String = SignTsaId.text!
        
        //Assigning variable to Database variables.
        member["Name"] = SName
        member["Email"] = SEmail
        member["PhoneNumber"] = SSignPhone
        member["TSAiD"] = SSignTsaId
        
        // Saves the new object.
        if(!SName.isEmpty && !SEmail.isEmpty && !SSignPhone.isEmpty && !SSignTsaId.isEmpty){
            member.saveInBackground {
                (success: Bool, error: Error?) in
                if (success) {
                    // The object has been saved.
                    print("Member Saved")
                    
                    //Clearing Textfeilds when successfgully saved new member
                    
                    self.Name.text = ""
                    self.Email.text = ""
                    self.SignTsaId.text = ""
                    self.SignPhone.text = ""
                    
                    //self.performSegue(withIdentifier: "goodSignUp", sender: self)
                } else {
                    // There was a problem, check error.description
                }
            }
        } else {
            
            print("Member Not Saved")

        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//
//        backgroundImage.image = UIImage(named: "Grey Background.jpg")
//        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
//        self.view.insertSubview(backgroundImage, at: 0)
//        backgroundImage.layer.zPosition = -10

//        //Rectangle Z Position
//        rectangle.layer.zPosition = 0
//
//        // corner radius
//        rectangle.layer.cornerRadius = 10
//
//        // border
//        rectangle.layer.borderWidth = 1.0
//        rectangle.layer.borderColor = UIColor.black.cgColor
//
//        // shadow
//        rectangle.layer.shadowColor = UIColor.black.cgColor
//        rectangle.layer.shadowOffset = CGSize(width: 3, height: 3)
//        rectangle.layer.shadowOpacity = 0.7
//        rectangle.layer.shadowRadius = 4.0
        
        //Button Z Positions
        
        
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
