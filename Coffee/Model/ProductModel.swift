//
//  Products.swift
//  Coffee
//
//  Created by HIND12 on 01/06/1443 AH.
//

import Foundation


class ProductModel {
    var product_name    = ""
    var price           = 0
    var photo: String?    = ""
    var description     = ""
    
    init( product_name: String, price: Int, description: String = "",photo: String? = "") {

        self.product_name   = product_name
        self.price      =  price
        self.description    = description
        self.photo          = photo
    }
    
}
