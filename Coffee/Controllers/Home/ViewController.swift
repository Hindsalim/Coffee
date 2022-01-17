//
//  ViewController.swift
//  Coffee
//
//  Created by HIND12 on 04/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textWelcom: UILabel!
    
    override func viewDidLoad() {
     super.viewDidLoad()
       Animations()
    }
    
    
    
    
    func Animations() {
        
        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
self.textWelcom.transform = CGAffineTransform(rotationAngle: 120)
   } completion: { _ in
       UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
           self.textWelcom.alpha = 0
        } completion: { _ in
        }
   }
}

}
