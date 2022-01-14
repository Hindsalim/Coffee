//
//  SectionViewController.swift
//  Coffee
//
//  Created by HIND12 on 05/05/1443 AH.
//

import UIKit

class SectionViewController: UIViewController , UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{


    var sections : [Section] = []
    var selectedSection : Section!
    
    
    @IBOutlet weak var sectionCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sectionCollectionView.delegate = self
        sectionCollectionView.dataSource = self
        // Do any additional setup after loading the view.
        
        
        
    /// Displays mnue  and sections Product description and price.
        
        let sweetDateCake = Product(name: "date cake", imageName: "Image-1", price: 21, describe: " hot date cake with caramel suous")
        let sweetLemonCake = Product(name: "lemon cake", imageName: "Image-1a", price: 20, describe: "lemon cake sweet and sour flavour")
        let sweetLavaCake = Product(name: "lava cake", imageName: "Image-1b", price: 21, describe: "lava cake extra dark chocolate")
        let sweetCheeseCake = Product(name: "Cheesecake", imageName: "Image-1c", price: 18, describe: " lotus cheese cake")
        let sweetEnglishCake = Product(name: "english cake",imageName: "Image-1d",price:6, describe: "Fresh soft cake daily")
        ///Sweets section.
        let drinkEspresso = Product(name: "Espresso", imageName: "Image-2", price: 10, describe: "Doubal shot of coffee")
        let drinkHotChocolate = Product(name: "hot chocolate", imageName: "Image-2a", price: 20, describe: "Dark chocolate with hot milk")
        let drinkCappuccino = Product(name: "cappuccino", imageName: "Image-2b", price: 16, describe: "A mixture of espresso and milk ")
        let drinkSpanishLatte = Product(name: "spanish latte", imageName: "Image-2c", price: 19, describe: "A mixture of espresso and sweetended milk")
        let drinkFlatwhite = Product(name: "Flatwhite",imageName: "Image-2d",price:15, describe: "A mixture of espresso and milk without sugar")
        /// Hot drinks section.
        let drinkIcedLatte = Product(name: "lced latte ", imageName: "Image-3", price: 17, describe:"A mixture of espresso and cold milk and ice")
        let drinkIcedSpanish  = Product(name: "lced spanish ", imageName: "Image-3a", price: 20, describe:" A mixture of espresso and sweetend cold milk and ice")
        let drinkIcedPistachio  = Product(name: "Iced pistachio ", imageName: "Image-3b", price: 22, describe:"A mixture of espresso and cold sweetened milk with cold pistachio and ice ")
        let drinkAmericano = Product(name: "Americano ", imageName: "Image-3c", price: 15, describe:"A mixture of espresso cold water and ice ")
        let drinkOrangeJuice = Product(name: "orangejuice", imageName: "Image-3d", price: 16, describe: "Natural orange juice served cold")
        /// Cold drinks section.
        let mangoIceCream = Product(name: "mango ice cream", imageName: "Image-4", price: 15, describe: "Natural mango ice cream with mango slices")
        let strawberryIceCream = Product(name: "strawberry ice cream", imageName: "Image-4a", price:14, describe: " Natural Strawberry ice cream with strawberry slice")
        let pistachioIceCream = Product(name: "pistachio ice cream", imageName: "Image-4b", price: 16, describe: "pistachio ice cream with pistachio pieces")
        let mixMangoIceCreamvanilla = Product(name: "mix mango ice cream and vanilla ice cream", imageName: "Image-4c", price: 17, describe: "mango slice with vanilla ice cream")
        let chocolateIcecream = Product(name: "Chocolate ice cream" , imageName: "Image-4d", price: 13, describe: "Chocolate ice cream with Chocolate Flavored Flakes")
        /// Ice cream section.
       let sweetSection = Section (name: "sweet", products: [sweetDateCake,sweetLemonCake,sweetLavaCake, sweetCheeseCake,sweetEnglishCake], imageName: "Image1")
        
       let drinkSection = Section (name: "hot drinks", products: [drinkEspresso ,drinkHotChocolate, drinkCappuccino ,drinkSpanishLatte,drinkFlatwhite], imageName: "image2")
        
        let drinkSection1 = Section (name: "cold drinks",products:[drinkIcedLatte,drinkIcedSpanish,drinkIcedPistachio ,drinkAmericano,drinkOrangeJuice], imageName: "image3")
        
      let icecreamSection = Section (name:"ice cream",products: [mangoIceCream ,strawberryIceCream, pistachioIceCream ,mixMangoIceCreamvanilla,chocolateIcecream ], imageName:"image4")
        
        
    
        sections.append(sweetSection)
        sections.append(drinkSection)
        sections.append(drinkSection1 )
        sections.append(icecreamSection)
        
        sectionCollectionView.reloadData()
        
        print(sections)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("\(sections.count)")
        return sections.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
   let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sectionCell", for: indexPath) as! SectionCollectionViewCell
        
        cell.sectionimageView .image = UIImage(named: sections[indexPath.row].imageName)
        cell.sectionTitalLable.text = sections[indexPath.row].name
        cell.viewLabel.layer.cornerRadius = 12
        return cell
   }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: view.bounds.width  , height: view.bounds.height/4)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedSection = sections[indexPath.row]
        performSegue(withIdentifier: "toProducts", sender: nil)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toProducts" {
            
            let dest = segue.destination as! ProductTableViewController
            dest.selectedSection = selectedSection
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
