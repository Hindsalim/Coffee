//
//  SignoutViewController.swift
//  Coffee
//
//  Created by HIND12 on 09/06/1443 AH.
//

import Foundation
import Firebase
import UIKit
import FirebaseAuth

class SignOutViewController: UIViewController {
    
    //  @IBOutlet weak var lblTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func signout(_ sender:Any) {
       
        
        let firebaseAuth = Auth.auth()
                do{
                        try firebaseAuth.signOut()
                    performSegue(withIdentifier:"out", sender: nil)
                       
                    }catch let sinOutError as NSError {
                        print("ERROR Signing Out: %@",sinOutError)
                   }
    }
    
    
}





//    func signOut(_ sender: Any) {
//           let firebaseAuth = Auth.auth()
//           do{
//                try firebaseAuth.signOut()
//             self.dismiss(animated: true, completion: nil)
//            }catch let sinOutError as NSError {
//                print("ERROR Signing Out: %@",sinOutError)
//           }
//        }
