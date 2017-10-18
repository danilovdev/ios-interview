//: Playground - noun: a place where people can play

import UIKit

let str = "This is the string which will be reverted particaually"

enum WhichNumer: Int {
    case Even = 0
    case Odd = 1
}

func reverseWords(str: String, number: WhichNumer = .Even) -> String {
    let array = str.components(separatedBy: " ")
    var newStr = ""
    for i in 0..<array.count {
        if newStr != "" {
            newStr += " "
        }
        let word = array[i]
        if (i + 1) % 2 == number.rawValue {
            newStr += String(word.reversed())
        } else {
            newStr += word
        }
    }
    
    return newStr
}

print(reverseWords(str: str))
// This si the gnirts which lliw be detrever particaually

print(reverseWords(str: str, number: .Odd))
//sihT is eht string hcihw will eb reverted yllauacitrap

func reverseWordsUsingHOF(str: String, number: WhichNumer = .Even) -> String {
    
    print(str.components(separatedBy: " "))
    // ["This", "is", "the", "string", "which", "will", "be", "reverted", "particaually"]
    for (n, x) in str.components(separatedBy: " ").enumerated() {
        print("\(n) : \(x)")
    }
//    0 : This
//    1 : is
//    2 : the
//    3 : string
//    4 : which
//    5 : will
//    6 : be
//    7 : reverted
//    8 : particaually
    print(str.components(separatedBy: " ").enumerated)
    print(str.components(separatedBy: " ").enumerated().map { (index, value) -> String in
        print(index)
        if ((index + 1) % 2 == number.rawValue) {
            return String(value.reversed())
        }
        return value
    })
    // ["This", "si", "the", "gnirts", "which", "lliw", "be", "detrever", "particaually"]
    
    let newStr = str.components(separatedBy: " ").enumerated().map { (index, value) -> String in
        print(index)
        if ((index + 1) % 2 == number.rawValue) {
            return String(value.reversed())
        }
        return value
    }.joined(separator: " ")
    
    // This si the gnirts which lliw be detrever particaually
    
    return newStr
}

print(reverseWordsUsingHOF(str: str))
// This si the gnirts which lliw be detrever particaually
