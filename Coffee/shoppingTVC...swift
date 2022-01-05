//
//  shoppingCartCell..swift
//  Coffee
//
//  Created by HIND12 on 25/05/1443 AH.
//

import Foundation
import UIKit

class shoppingTVC: UITableViewCell {
    func didSelectUserData(name: String, description : String,price : Int) {
       
    }
    @IBOutlet weak var imageViewProduct: UIImageView!
    @IBOutlet weak var nameProduct: UILabel!
    @IBOutlet weak var priceProduct: UILabel!
    @IBOutlet weak var describeProduct: UILabel!
    var arrNames = [String]()
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
        func saveCoreData(name:String,description : String,image : String,price : Int) -> Bool {
            
        if name == "" || price == Int { return false }
         guard let name:String = description: String image:String price: Int else  {return false}
         let Product = Product (name:"",description :"",image :""price:"")
            // Create Database
            cdProduct.create(product: ProductModel)
  
            return true
        }
    }
    }

   @IBAction func like(_ sender: Any) {
    

        }

    
    




