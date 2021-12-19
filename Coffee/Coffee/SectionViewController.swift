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
        
        
        
        
        let sweetProduct1 = Product(name: "sweet1", imageName: "Image-1", price: 21, describe: "Delicious crispy date cake")
        let sweetProduct2 = Product(name: "sweet2", imageName: "Image-1", price: 20, describe: "Delicious crispy date cake")
        let sweetProduct3 = Product(name: "sweet3", imageName: "Image-1", price: 23, describe: "Delicious crispy date cake")
        let sweetProduct4 = Product(name: "sweet4", imageName: "Image-1", price: 25, describe: "Delicious crispy date cake")

        let drinkProduct1 = Product(name: "hot drinks", imageName: "Image-2", price: 20, describe: "Hot chocolat is a favorite to cool everyone in winter times")
        let drinkProduct2 = Product(name: "hot drinks", imageName: "Image-2", price: 19, describe: "Hot chocolat is a favorite to cool everyone in winter times")
        let drinkProduct3 = Product(name: "hot drinks", imageName: "Image-2", price: 24, describe: "Hot chocolat is a favorite to cool everyone in winter times")
        let drinkProduct4 = Product(name: "hot drinks", imageName: "Image-2", price: 22, describe: "Hot chocolat is a favorite to cool everyone in winter times")
        
        let Hotchocolate1 = Product(name: "cold drinks1", imageName: "Image-3", price: 21, describe:"")
        let IceBlack = Product(name: "cold drinks2", imageName: "Image-3", price: 20, describe:"")
        let Mocha = Product(name: "cold drinks3", imageName: "Image-3", price: 18, describe:"")
        let IceLatia  = Product(name: "cold drinks4", imageName: "Image-3", price: 22, describe:"")
        
        let icecreamProduct1 = Product(name: "ice cream1", imageName: "Image-4", price: 25, describe: "")
        let icecreamProduct2 = Product(name: "ice cream2", imageName: "Image-4", price: 27, describe: "")
        let icecreamProduct3 = Product(name: "ice cream3", imageName: "Image-4", price: 19, describe: "")
        let icecreamProduct4 = Product(name: "ice cream4", imageName: "Image-4", price: 23, describe: "")
    
        
        
        
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
