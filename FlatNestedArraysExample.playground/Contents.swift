//: Playground - noun: a place where people can play

import UIKit

let array: [Any] = [1, 2, [3]]

func makeFlatArray(_ array: [Any]) -> [Int] {
    var flatArray = [Int]()
    for item in array {
        if let item = item as? Int {
            flatArray.append(item)
        } else if let item = item as? [Any] {
            let result = makeFlatArray(item)
            flatArray += result
        }
    }
    return flatArray
}

print(makeFlatArray([1, 2, 3]))
// [1, 2, 3]
print(makeFlatArray([1, [2, 3, 4]]))
// [1, 2, 3, 4]
print(makeFlatArray([1, [2, [3, 4]]]))
// [1, 2, 3, 4]
print(makeFlatArray([[1], [2, [3, 4, [5]]]]))
// [1, 2, 3, 4, 5]


func makeFlatArrayGeneric<T>(_ array: [Any]) -> [T] {
    var flatArray = [T]()
    for item in array {
        if let item = item as? T {
            flatArray.append(item)
        } else if let item = item as? [Any] {
            let result: [T] = makeFlatArrayGeneric(item)
            flatArray += result
        }
    }
    return flatArray
}

let array1: [Any] = [1, 2, [3], [4, [5]]]
let items1: [Int] = makeFlatArrayGeneric(array1)
print(items1)
// [1, 2, 3, 4, 5]

let array2: [Any] = ["A", "BB", ["CCC"], ["DD", ["EE"]]]
let items2: [String] = makeFlatArrayGeneric(array2)
print(items2)
// ["A", "BB", "CCC", "DD", "EE"]

extension Array {
    
    func makeFlat() -> [Element] {
        let flatArray = self.flatMap { (element) -> [Element] in
            if let array = element as? Array {
                return array.makeFlat()
            }
            return [element]
        }
        return flatArray
    }
}

print(array2.makeFlat())
// ["A", "BB", "CCC", "DD", "EE"]


