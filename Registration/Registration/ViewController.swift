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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myMethod()
        
    }

    func myMethod() {
        
        let user = PFUser()
        user.username = "myUsername"
        user.password = "myPassword"
        user.email = "email@example.com"
        
        // other fields can be set just like with PFObject
        user["phone"] = "0429341997"
        user.signUpInBackground()
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
}

