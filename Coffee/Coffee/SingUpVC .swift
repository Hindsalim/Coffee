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
       
       }
        
        func SignUp(email: String,password:String) {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                
                print("email:\(String(describing: authResult?.user.email))")
                print("uid:\(String(describing: authResult?.user.uid))")
                
UserApi.addUser(name: "Hind", uid: authResult?.user.uid ?? "", phone: "966500707832", email: email) { check in
                    if check {
                        print("Done saving in Database")
                    } else {
                        
         }
     }
}
        
