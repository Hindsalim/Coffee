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
        
        
        
        
        let sweetDateCake = Product(name: "date cake", imageName: "Image-1", price: 21, describe: " hot date cake")
        let sweetLemonCake = Product(name: "lemon cake", imageName: "Image-1a", price: 19, describe: "lemon cake sweet and sour flavour")
        let sweetLavaCake = Product(name: "lava cake", imageName: "Image-1b", price: 23, describe: "lava cake extra chocolate")
        let sweetCheeseCake = Product(name: "cheese cake", imageName: "Image-1c", price: 20, describe: " lotus cheese cake")
        ///Sweets section
        let drinkespresso = Product(name: "cortaduo", imageName: "Image-2", price: 18, describe: "espresso coffee with milk")
        let drinkHotChocolate = Product(name: "hot chocolate", imageName: "Image-2a", price: 20, describe: "Dark chocolate with hot milk")
        let drinkCappuccino = Product(name: "cappuccino", imageName: "Image-2b", price: 16, describe: "milk in small portion to dark coffee")
        let drinkHotSpanish = Product(name: "hot spanish", imageName: "Image-2c", price: 19, describe: "spanish coffee")
        /// Hot drinks section
        let drinkColdIceLatte = Product(name: "cold lce latte ", imageName: "Image-3", price: 17, describe:"cold coffee little ice")
        let drinkColdSpanish  = Product(name: "cold spanish ", imageName: "Image-3a", price: 20, describe:"spanish coffee with milk and ice")
        let drinkColdPistachio  = Product(name: "cold pistachio ", imageName: "Image-3b", price: 18, describe:"")
        let drinkColdAmericano = Product(name: "cold americano ", imageName: "Image-3c", price: 22, describe:"America or iced, which depends on and according to espresso coffee, cold coffee types")
        /// Cold drinks section
        let mangoIceCream = Product(name: "mango ice cream", imageName: "Image-4", price: 19, describe: "Natural mango ice cream One of the best things that ice cream lovers love is the natural taste of mango")
        let strawberryIceCream = Product(name: "strawberry ice cream", imageName: "Image-4a", price:17, describe: "Strawberry is one of the most popular flavors used to make ice cream or frozen dessert in summer")
        let pistachioIceCream = Product(name: "pistachio ice cream", imageName: "Image-4b", price: 18, describe: "pistachio ice cream with pistachio pieces")
        let mixMangoIceCream = Product(name: "mix mango ice cream", imageName: "Image-4c", price: 20, describe: "mango pupl with vanilla ice cream")
    
        /// Ice cream section
       let sweetSection = Section (name: "sweet", products: [sweetDateCake,sweetLavaCake, sweetLemonCake,sweetCheeseCake], imageName: "Image1")
       let drinkSection = Section (name: "hot drinks", products: [drinkespresso ,drinkHotChocolate, drinkCappuccino ,drinkHotSpanish], imageName: "image2")
        let drinkSection1 = Section (name: "cold drinks",products:[drinkColdIceLatte ,drinkColdSpanish ,drinkColdPistachio,drinkColdAmericano], imageName: "image3")
      let icecreamSection = Section (name:"ice cream",products: [mangoIceCream,strawberryIceCream, pistachioIceCream,mixMangoIceCream], imageName:"image4")
        
        
    
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
