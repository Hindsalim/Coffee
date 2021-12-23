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
        
        
        
        
        let sweetProduct1 = Product(name: "date cake", imageName: "Image-1", price: 21, describe: "Delicious crispy date cake")
        let sweetProduct2 = Product(name: "lemon cake", imageName: "Image-1a", price: 19, describe: "One of the most delicious cakes fragile firm wet")
        let sweetProduct3 = Product(name: "lava cake", imageName: "Image-1b", price: 23, describe: "lava cake stuffed with nutella")
        let sweetProduct4 = Product(name: "cheese cake", imageName: "Image-1c", price: 20, describe: "cold lotus cheesecake")

        let drinkProduct1 = Product(name: "espresso", imageName: "Image-2", price: 10, describe: "Espresso coffee is one of the most important Italian drinks, as this coffee is distinguished by its dark color")
        let drinkProduct2 = Product(name: "hot chocolate", imageName: "Image-2a", price: 20, describe: "Hot chocolat is a favorite to cool everyone in winter times")
        let drinkProduct3 = Product(name: "cappuccino", imageName: "Image-2b", price: 16, describe: "Hot chocolat is a favorite to cool everyone in winter times")
        let drinkProduct4 = Product(name: "hot spanish", imageName: "Image-2c", price: 20, describe: "Hot chocolat is a favorite to cool everyone in winter times")
        
        let Hotchocolate1 = Product(name: "lce latte", imageName: "Image-3", price: 17, describe:"")
        let IceBlack = Product(name: "spanish cold ", imageName: "Image-3a", price: 20, describe:"")
        let Mocha = Product(name: "pistachio cold ", imageName: "Image-3b", price: 18, describe:"")
        let IceLatia  = Product(name: "americano cold ", imageName: "Image-3c", price: 22, describe:"")
        
        let icecreamProduct1 = Product(name: "mango ice cream", imageName: "Image-4", price: 18, describe: "")
        let icecreamProduct2 = Product(name: "vanilla ice cream", imageName: "Image-4a", price:17, describe: "")
        let icecreamProduct3 = Product(name: "pistachio ice cream", imageName: "Image-4b", price: 18, describe: "")
        let icecreamProduct4 = Product(name: "mix mango ice cream", imageName: "Image-4c", price: 19, describe: "")
    
        
        
        
       let sweetSection = Section (name: "sweet", products: [sweetProduct1,sweetProduct2, sweetProduct3,sweetProduct4], imageName: "Image1")
       let drinkSection = Section (name: "hot drinks", products: [Hotchocolate1 , IceBlack  , Mocha , IceLatia  ], imageName: "image2")
        let drinkSection1 = Section (name: "cold drinks",products: [drinkProduct1,drinkProduct2, drinkProduct3,drinkProduct4], imageName: "image3")
      let icecreamSection = Section (name:"ice cream",products: [icecreamProduct1,icecreamProduct2,icecreamProduct3,icecreamProduct4], imageName:"image4")
        
        
    
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
