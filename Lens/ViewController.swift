//
//  ViewController.swift
//  Lens
//
//  Created by Ryan St.Pierre on 12/29/16.
//  Copyright © 2016 Ryan St.Pierre. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        FIRApp.configure()
        signIn("ryno48ryno@aim.com", password: "password")
        
    }
    
    func createUser(email: String, password: String) {
        FIRAuth.auth()?.createUserWithEmail(email, password: password, completion: { (user, error) in
            
        })
    }

    func signIn(email: String, password: String) {
        
            let ref = FIRDatabase.database().reference()
            let val = ref.child("value");
            print("BEFORE")
            print(val.setValue("Dif"))
            print("AFTER")
        
    }


}

