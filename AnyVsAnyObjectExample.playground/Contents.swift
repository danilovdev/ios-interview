//: Playground - noun: a place where people can play

import UIKit

var items = [Any]()
items.append(1)
items.append("Special")
items.append(3.5)
items.append((55, 22))
items.append([1, 2, 3, 4])

func sum(_ a: Int, _ b: Int) -> Int {
    return (a + b)
}
let aSum = sum
items.append(aSum)

class Vehicle {
    var name: String
    init(_ name: String) {
        self.name = name
    }
}
items.append(Vehicle("MyCar"))

for item in items {
    print(item)
}

//1
//Special
//3.5
//(55, 22)
//[1, 2, 3, 4]
//(Function)
//__lldb_expr_102.Vehicle

class Device {}
class Car {}

var anyObjects1: [AnyObject] = [Device(), Car()]
// it works fine, because there only reference type instances - classes

var anyObjects2: [AnyObject] = [1, "Test"]
// error: value of type 'Int' does not conform to expected element type 'AnyObject'

