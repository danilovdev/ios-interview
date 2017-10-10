//: Playground - noun: a place where people can play

import UIKit

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
let sum = 10

// 1. Brute Force Solution. Time complexity = n2
func twoSumBruteForce(array: [Int], sum: Int) -> Bool {
    
    for i in 0..<array.count {
        for j in (i + 1)..<array.count {
            if sum == (array[i] + array[j]) {
                
                return true
            }
        }
    }
    
    return false
}

// 1.1 Brute Force Solution using swift style. Time complexity = n2
func twoSumBruteForceSwifty(array: [Int], sum: Int) -> Bool {
    
    for i in 0..<array.count {
        for j in 0..<array.count where i != j {
            if sum == (array[i] + array[j]) {
                return true
            }
        }
    }
    
    return false
}

// 2. Solution with Hashing. Time complexity = n

func twoSumHashing(array: [Int], sum: Int) -> Bool {
    var dict = [Int: Int]()
    for i in 0..<array.count {
        dict[array[i]] = i
    }
    for i in 0..<array.count {
        let complement = sum - array[i]
        if (dict[complement] != nil) {
            return true
        }
    }
    
    return false
}

// 2.1 Solution with Hashing but one loop. Time complexity = n

func twoSumHashingImproving(array: [Int], sum: Int) -> Bool {
    var dict = [Int: Int]()
    for i in 0..<array.count {
        let complement = sum - array[i]
        if (dict[complement] != nil) {
            return true
        }
        dict[array[i]] = i
    }
    
    return false
}

// 3. Soultion with reducing interval. Time complexity = n
func twoSumReduceInterval(array: [Int], sum: Int) -> Bool {
    
    var lowIndex = 0
    var highIndex = array.count - 1
    
    while lowIndex < highIndex {
        
        let localSum = array[lowIndex] + array[highIndex]
        
        if (sum == localSum) {
            return true
        } else if (localSum < sum) {
            lowIndex += 1
        } else if (localSum > sum) {
            highIndex -= 1
        }
    }
    
    return false
}

