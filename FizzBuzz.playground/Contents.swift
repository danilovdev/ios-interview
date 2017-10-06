//: Playground - noun: a place where people can play

import UIKit

let numbers = Array(1...100)

for number in numbers {
    if number % 15 == 0 {
        print("\(number) FizzBuzz")
    } else if number % 3 == 0 {
        print("\(number) Fizz")
    } else if number % 5 == 0 {
        print("\(number) Buzz")
    } else {
       print("\(number)")
    }
}

