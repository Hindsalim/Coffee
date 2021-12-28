//
//  shoppingCartViewController.swift
//  Coffee
//
//  Created by HIND12 on 24/05/1443 AH.
//

import UIKit

class shoppingCartViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var arrCoffees = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        arrCoffees.append(Product.init(name: "date cake",price: " 21", description: "Delicious crispy date cake",Product: "Image&"(name: "Image&",)!))
        arrCoffees.append(Product.init(name: "lava cake", imageName: "Image!", price: "23", describe: "lava cake stuffed with nutella", Product: ""))
        arrCoffees.append(Product.init(name: "cappuccino", imageName: "Image*", price: "16", description: "Kind of coffee", Product: ""))
        arrCoffees.append(Product.init(name: "strawberry ice cream", imageName: "Image%", price: "17", description: "Strawberry is one of the most popular flavors used to make ice cream or frozen dessert in summer", Product: ""))
        
    
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection: Int)-> Int {
    return 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)-> UITableViewCell {
        let cell = tableView.dequeueReusablecell(withIdentifier: "shoppingCartcell") as! ShoppingCartTableViewCell
    return cell
    }
}
struct Product {
    let name: String
    let price: Double
    let description: String
    let "" : UIImage
}

        
        
        
        
        
        
        
        
        
        
        
        
        

        // Do any additional setup after loading the view.

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
