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

class SignoutViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
switch traitCollection.userInterfaceStyle{
case.light:
      lblTitle.text = "Light Mode"
case .dark:
    lblTitle.text = "Dark Mode"
default:
    lblTitle.text = "Unspecified"
}
    }
    
    @IBAction func signOut(_ sender: Any) {
        let firebaseAuth = Auth.auth()
        do{
            try firebaseAuth.signOut()
            self.dismiss(animated: true, completion: nil)
        }catch let sinOutError as NSError {
            print("ERROR Signing Out: %@",sinOutError)
        }
    }
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
