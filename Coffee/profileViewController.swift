//
//  profileViewController.swift
//  Coffee
//
//  Created by HIND12 on 08/06/1443 AH.
//

import Foundation
import SwiftUI



import firebaseMLModelDownloader



let firebaseAuth = Auth.auth()
do{
    
    try firebaseAuth.signOut()
    self.dismiss(Animation: true, Completion: nil)
}catch let sinOutError as NSError {
    print("ERROR Signin Out: %@" ,sinOutError)
}




