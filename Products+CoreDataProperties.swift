//
//  Products+CoreDataProperties.swift
//  Coffee
//
//  Created by HIND12 on 03/06/1443 AH.
//
//

import Foundation
import CoreData


extension Products {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Products> {
        return NSFetchRequest<Products>(entityName: "Products")
    }

    @NSManaged public var describe: String?
    @NSManaged public var image: String?
    @NSManaged public var name: String?
    @NSManaged public var price: Int32
    
    func create(product: Product) {

        let context = PersistentStorage.shared.context
        let cdproducts = Products(context: context)
        
        cdproducts.name = product.name
        cdproducts.price = Int32(product.price)
        cdproducts.image = product.imageName
        cdproducts.describe = product.describe
    
        
        
        
        PersistentStorage.shared.saveContext()

    }

}

extension Products : Identifiable {

}
