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
        
        let sweetDateCake = Product(name:NSLocalizedString("date cake", comment: " ") , imageName: "Image-1", price:21, describe: "hot date cake with caramel suous".localaized)
        let sweetLemonCake = Product(name:NSLocalizedString("lemon cake", comment: "") , imageName: "Image-1a", price:20, describe: "lemon cake sweet and sour flavour".localaized)
        let sweetLavaCake = Product(name:NSLocalizedString("lava cake", comment: "") , imageName: "Image-1b", price:21, describe: "lava cake extra dark chocolate".localaized)
        let sweetCheeseCake = Product(name:NSLocalizedString("Cheesecake", comment: "") , imageName: "Image-1c", price:18, describe: " lotus cheese cake".localaized)
        let sweetEnglishCake = Product(name:NSLocalizedString("english cake", comment: "") ,imageName: "Image-1d",price:6, describe: "Fresh soft cake daily".localaized)
        ///Sweets section.
        let drinkEspresso = Product(name:NSLocalizedString("Espresso", comment: "") , imageName: "Image-2", price:10, describe: "Doubal shot of coffee".localaized)
        let drinkHotChocolate = Product(name:NSLocalizedString("hot chocolate", comment: "") , imageName: "Image-2a", price:20, describe: "Dark chocolate with hot milk".localaized)
        let drinkCappuccino = Product(name:NSLocalizedString("cappuccino", comment: ""), imageName: "Image-2b", price:16, describe: "A mixture of espresso and milk ".localaized)
        let drinkSpanishLatte = Product(name:NSLocalizedString("spanish latte", comment: "") , imageName: "Image-2c", price:19, describe: "A mixture of espresso and sweetended milk".localaized)
        let drinkFlatwhite = Product(name: NSLocalizedString("Flatwhite", comment: ""),imageName: "Image-2d",price:15, describe: "A mixture of espresso and milk".localaized)
        /// Hot drinks section.
        let drinkIcedLatte = Product(name:NSLocalizedString("lced latte", comment: "") , imageName: "Image-3", price:17, describe:"A mixture of espresso and cold milk".localaized)
        let drinkIcedSpanish  = Product(name:NSLocalizedString("lced spanish ", comment: ""), imageName: "Image-3a", price:20, describe:" A mixture of espresso and sweetend cold".localaized)
        let drinkIcedPistachio  = Product(name: NSLocalizedString("Iced pistachio ", comment: ""), imageName: "Image-3b", price:22, describe:"A mixture of espresso and cold milk with pistachio".localaized)
        let drinkAmericano = Product(name: NSLocalizedString("Americano ", comment: ""), imageName: "Image-3c", price:15, describe:"A mixture of espresso cold water and ice".localaized)
        let drinkOrangeJuice = Product(name: NSLocalizedString("orangejuice", comment: ""), imageName: "Image-3d", price:16, describe: "Natural orange juice served cold".localaized)
        /// Cold drinks section.
        let mangoIceCream = Product(name:NSLocalizedString("mango ice cream", comment: "") , imageName: "Image-4", price:15, describe: "Natural mango ice cream with mango slices".localaized)
        let strawberryIceCream = Product(name:NSLocalizedString("strawberry ice cream", comment: ""), imageName: "Image-4a", price:14, describe: " Natural Strawberry ice cream with strawberry slice".localaized)
        let pistachioIceCream = Product(name:NSLocalizedString("pistachio ice cream", comment: ""), imageName: "Image-4b", price:16, describe: "pistachio ice cream with pistachio pieces".localaized)
        let mixMangoIceCreamvanilla = Product(name:NSLocalizedString("mix mango ice cream and vanilla", comment: ""), imageName: "Image-4c", price:17, describe: "mango slice with vanilla ice cream".localaized)
        let chocolateIcecream = Product(name:NSLocalizedString("Chocolate ice cream", comment: "") , imageName: "Image-4d", price:13, describe: "Chocolate ice cream with Flavored Flakes".localaized)
        /// Ice cream section.
        let sweetSection = Section (name:NSLocalizedString( "sweet", comment: ""), products: [sweetDateCake,sweetLemonCake,sweetLavaCake, sweetCheeseCake,sweetEnglishCake], imageName: "Image1")
        
       let drinkSection = Section (name: NSLocalizedString("hot drinks", comment: ""), products: [drinkEspresso ,drinkHotChocolate, drinkCappuccino ,drinkSpanishLatte,drinkFlatwhite], imageName: "image2")
        
        let drinkSection1 = Section (name:NSLocalizedString("cold drinks", comment: "") ,products:[drinkIcedLatte,drinkIcedSpanish,drinkIcedPistachio ,drinkAmericano,drinkOrangeJuice], imageName: "image3")
        
      let icecreamSection = Section (name:NSLocalizedString("ice cream", comment: ""),products: [mangoIceCream ,strawberryIceCream, pistachioIceCream ,mixMangoIceCreamvanilla,chocolateIcecream ], imageName:"image4")
        
        
    
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
