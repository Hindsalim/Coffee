//
//  SigninVC.swift
//  Coffee
//
//  Created by HIND12 on 08/05/1443 AH.
//

import Foundation
import UIKit
import FirebaseAuth

class SigninVC: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func signin(_ sender: UIButton) {
        
        Auth.auth().signIn(withEmail: email.text ?? "", password: password.text ?? "") { [weak self] authResult, error in
            
            if let error = error {
                let alert = UIAlertController(title: "Error", message: "Sorry,we could not find your account.", preferredStyle: .alert)
                print(error.localizedDescription)
            }
            if authResult?.user.email != nil {
                
            }
            print("email:\(String(describing: authResult?.user.email))")
            print("uid:\(String(describing: authResult?.user.uid))")
            // ...
        }
        
    }
    
    
    
    
}
