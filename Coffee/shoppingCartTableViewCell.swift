//
//  shoppingCartTableViewCell.swift
//  Coffee
//
//  Created by HIND12 on 24/05/1443 AH.
//

import UIKit

class shoppingCartTableViewCell: UITableViewCell {

    @IBOutlet weak var imageProduct: UIImageView!
    @IBOutlet weak var lblProductName: UILabel!
    @IBOutlet weak var lblProductPrice: UILabel!
    @IBOutlet weak var lblProductDescription: UILabel!
    @IBOutlet weak var btnAddToCoffee: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setupcell(Product: UIImage,name: String,price: Double,description: String) {
        imageProduct.image = Product
        lblProductName.text = name
        lblProductPrice.text = "\(price)SAR"
        lblProductDescription.text = description
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
