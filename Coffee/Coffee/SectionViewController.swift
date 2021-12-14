//
//  SectionViewController.swift
//  Coffee
//
//  Created by HIND12 on 05/05/1443 AH.
//

import UIKit

class SectionViewController: UIViewController , UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{


    var sections : [Section] = []
    
    
    @IBOutlet weak var sectionCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sectionCollectionView.delegate = self
        sectionCollectionView.dataSource = self
        // Do any additional setup after loading the view.
        
        
        let sweetSection = Section (name: "sweet", products: [], imageName: "Image1")
        let drinkSection = Section (name: "hot drinks", products: [], imageName: "image2")
        
        let drinkSection1 = Section (name: "cold drinks",products: [], imageName: "image3")
        let icecreamSection = Section (name:"ice cream",products: [], imageName:"image4" )
        
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
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
