//: Playground - noun: a place where people can play

import UIKit
import Foundation

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//needed result = [3, 4, 5, 6, 7, 8, 9, 10, 1, 2]

let neededNumber = 3
var firstPart = [Int]()
var secondPart = [Int]()
for number in numbers {
    if number == neededNumber || firstPart.count > 0 {
        firstPart.append(number)
    } else {
        secondPart.append(number)
    }
}

let result = firstPart + secondPart
// result = [3, 4, 5, 6, 7, 8, 9, 10, 1, 2]

let numbersArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//needed result = [3, 4, 5, 6, 7, 8, 9, 10, 1, 2]

let index = numbersArray.index(where: { $0 == 3 })
let prefix = numbersArray.prefix(upTo: index!)
// not include element at the end position
// prefix = [1, 2]

let suffix = numbersArray.suffix(from: index!)
// from specified postion to the end of array
// suffix = [3, 4, 5, 6, 7, 8, 9, 10]

let shiftingArray = suffix  + prefix
// shiftingArray = [3, 4, 5, 6, 7, 8, 9, 10, 1, 2]




