//: Playground - noun: a place where people can play

import UIKit

let numbers = [1, 2, 5, 7, 8, 14, 17, 19, 22, 35, 56, 78, 89]

func linearSearch(searchValue: Int, array: [Int]) -> Bool {
    for number in numbers {
        if number == searchValue {
            return true
        }
    }
    return false
}

linearSearch(searchValue: 56, array: numbers)

func binarySearch(searchValue: Int, array: [Int]) -> Bool {
    var lowerBound = 0
    var upperBound = array.count - 1
    
    while(true) {
        let middleIndex = (upperBound + lowerBound) / 2
        let middleValue = array[middleIndex]
        if middleValue == searchValue {
            return true
        } else if lowerBound > upperBound {
            return false
        } else {
            if middleValue < searchValue {
                lowerBound = middleIndex + 1
            } else {
                upperBound = middleValue - 1
            }
        }
    }
    
//    var leftIndex = 0
//    var rightIndex = array.count
//
//    while leftIndex < rightIndex {
//        let middleIndex = leftIndex + (rightIndex - leftIndex) / 2
//        let middleValue = array[middleIndex]
//
//        if middleValue == searchValue {
//            return true
//        } else if middleValue < searchValue  {
//            leftIndex = middleIndex + 1
//        } else {
//            rightIndex = middleIndex
//        }
//    }
//    return false
}

binarySearch(searchValue: 78, array: numbers)
