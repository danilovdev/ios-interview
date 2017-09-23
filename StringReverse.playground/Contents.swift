//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// First way
print(String(str.reversed()))

//Second way
var charArray: [Character] = [Character]()
for ch in str {
    charArray.append(ch)
}

var reversedArray: [Character] = [Character]()

for i in (0..<str.count).reversed() {
    reversedArray.append(charArray[i])
}

print(String(reversedArray))
