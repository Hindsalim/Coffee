//
//  SignUpVC.swift
//  Coffee
//
//  Created by HIND12 on 08/05/1443 AH.
//

import Foundation
import UIKit
import FirebaseAuth
class SingUpVC :UIViewController {
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var Phonenumber : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
// The customer registers a new login if he does not have a previous account and enters the required data:name ,email ,password and phonenumber
    }
    
    
    @IBAction func singUp(_ sender: Any) {
        SignUp(email: email.text ?? "", password: password.text ?? "")
    }
    
    
    func SignUp(email: String,password:String) {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            
            print("email:\(String(describing: authResult?.user.email))")
            print("uid:\(String(describing: authResult?.user.uid))")
            
            if let error = error {
                
                print("no user created")
            }
            
            if let user = authResult?.user {
                self.performSegue(withIdentifier: "showHome", sender: nil)
            }
            
//            UserApi.addUser(name: self.name.text ?? "", uid: authResult?.user.uid ?? "", phone: "966500707832", email: email) { check in
//                if check {
//                    print("Done saving in Database")
//                } else {
//                    
//                }
//            }
        }
    }
}
