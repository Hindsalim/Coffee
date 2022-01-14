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
    
    var product : Product!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
// Each product has its own details.
    }
    func configurecell(with: Product) {
        nameProduct.text = with.name
        priceProduct.text = "Price:\(with.price)"
        describeProduct.text = with.describe
        imageViewProduct.image = UIImage(named: with.imageName)
        
        self.product = with
    }
    
    @IBAction func addCart(_ sender: UIButton) {
        
        sender.setTitleColor(UIColor.green, for: .normal)
        sender.tintColor = UIColor.green
        
        let cdProduct = Products()
        cdProduct.create(product: product)
        
    }
   
   
    
    
    @IBAction func like(_ sender: Any) {

     }
 // Products are shown to the customer, which product he /she wants to add to the cart.
        
}



//
//func saveCoreData(name:String,description : String,image : String,price : Int) -> Bool {
//
//if name == "" || price == Int { return false }
// guard let name:String = description: String image:String price: Int else  {return false}
// let Product = Product (name:"",description :"",image :""price:"")
//    // Create Database
//    cdProduct.create(product: ProductModel)
//
//    return true
//}




