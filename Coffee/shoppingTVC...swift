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
    
    }
    @IBAction func like(_ sender: Any) {

        }
    }
    
    
    func tableView(_tableView:UITableView, numberOfRowsInSection section: Int)-> Int {
    return arrNames.count
    }
    func tableView(_ tableView:UITableView,cellForRowAt indexPath: IndexPath)-> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
         cell.textLabel?.text = arrNames[indexPath.row]

        return cell
    }



