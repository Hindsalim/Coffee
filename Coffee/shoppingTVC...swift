//
//  shoppingCartCell..swift
//  Coffee
//
//  Created by HIND12 on 25/05/1443 AH.
//

import Foundation
import UIKit

class shoppingTVC: UITableViewCell {

    @IBOutlet weak var imageViewShopping: UIImageView!
    @IBOutlet weak var nameProduct: UILabel!
    @IBOutlet weak var priceProduct: UILabel!
    @IBOutlet weak var describeProduct: UILabel!
    




    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configurecell(with: shopping) {
        labelTitle.text = with.name
        labelRating.text = "Rating: \(with.rate)"
        labelCategory.text = getshoppingType(withType: TypeOfshopping.init(rawValue: Int(with.type)) ?? .action)
        imageViewshopping.image = UIImage(named: with.imageURL ?? "1")
    }
}
