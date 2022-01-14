//
//  ViewController.swift
//  Coffee
//
//  Created by HIND12 on 04/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {
 @IBOutlet weak var lableView: UILabel!
    
    override func viewDidLoad() {
     super.viewDidLoad()
       Animations()
    }
    fileprivate func Animations() {
        
UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
self.lableView.transform = CGAffineTransform(rotationAngle: 120)
   } completion: { _ in
       UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
            self.lableView.alpha = 0
        } completion: { _ in
        }
   }
}

}
