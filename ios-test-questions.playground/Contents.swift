//: Playground - noun: a place where people can play

import UIKit
import Foundation

// 1. keyword final
class Car {
    
    func drive() {
        print("Let's go!")
    }
}

class MyCar: Car {
    
    override func drive() {
        print("Let's go faster!")
    }
}

let lady = MyCar()
lady.drive()
// print("Let's go faster!")

// 2. keyword fallthrough

let value = 22

switch value {
case 22:
    print("This is 22")
    fallthrough
case 33:
    print("This is 33")
case 7658:
    print("This is 7658")
default:
    print("This is default")
}

// Result of switch:
// This is 22
// This is 33




