//
//  shoppingCartCell..swift
//  Coffee
//
//  Created by HIND12 on 25/05/1443 AH.
//

import Foundation
import UIKit



class shoppingTVC: UITableViewCell {

    @IBOutlet weak var imageViewProduct: UIImageView!
    @IBOutlet weak var nameProduct: UILabel!
    @IBOutlet weak var priceProduct: UILabel!
    @IBOutlet weak var describeProduct: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configurecell(with: Product) {
        nameProduct.text = with.name
        priceProduct.text = "Product: \(with.price)"
        describeProduct.text = with.describe
        imageViewProduct.image = UIImage(named: with.imageName)
    }
    
    
    @IBAction func addCart(_ sender: Any) {
    }
    func
    @IBAction func like(_ sender: Any) {
    }
    
}
