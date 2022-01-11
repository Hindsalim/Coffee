//
//  Customer.swift
//  Coffee
//
//  Created by HIND12 on 08/05/1443 AH.
//

import Foundation
protocol person {
    var name : String {get}
    var age : Int {get}
    
}
enum Payment : Error {
    case paymentLow
    case paymentHigh
}

class Customer {

    var name: String
    var age: Int
let services : [Service]
    var phoneNumber : Int
    var password: String
    var description : String
 init(name:String, age:Int ,services:[Service],phoneNumber:Int,password:String,description: String) {
      self.name = name
     self.age = age
 self.services = services
        self.phoneNumber = phoneNumber
        self.password = password
        self.description = description
    }
    func connectig(payment : Int) throws -> String {
        
        let myPayment = Payment.paymentLow

switch myPayment {
        case Payment.paymentLow:
            print("Low")
        case Payment.paymentHigh:
           print("High")
        }

 print("\(name) paid \(payment)")
        
 // This is conditionals

        if (payment>50)  {
            print("It takes you to the place you want \(payment)")
        } else if (payment < 50) {
            print("It takes you to the place you want  \(payment)")
        }else {
        }
        return ""
    }
  // Delivery for more than 50 RS
    func connectig(){
   print("\(name) is connectig ...")
    }
    
    func printServices() {
       
for service in services {
print("It takes you to the place you want \(name) is:\(service.name),\(service.price),\(service.description)")
       }
   }


}


