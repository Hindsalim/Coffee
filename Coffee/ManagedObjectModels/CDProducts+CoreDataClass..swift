//
//  CDProducts+CoreDataClass..swift
//  Coffee
//
//  Created by HIND12 on 30/05/1443 AH.
//

import Foundation
import CoreData

@objc(CDproducts)
public class CDproducts: NSManagedObject {

    @NSManaged public var name: String?
    @NSManaged public override var description : String
    @NSManaged public  var image : String?
    @NSManaged public var price : Int
   
    func create(product: ProductModel) {

        let context = PersistentStorage.shared.context
        let cdproducts = CDproducts(context: context)
        
        cdproducts.name = product.product_name
        cdproducts.price = product.price
        cdproducts.image = product.photo
        cdproducts.description = product.description
    
        
        
        
        PersistentStorage.shared.saveContext()

    }
}
