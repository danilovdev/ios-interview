//: Playground - noun: a place where people can play

import UIKit

let array = [1, 2, 3, 4, 5]

// standard manner

var resultArray = [Int]()
for number in array {
    resultArray.append(number * number)
}
// resultArray = [1, 4, 9, 16, 25]

// manner 1
resultArray = array.map( { (value: Int) -> Int in
    return value * value
})
// resultArray = [1, 4, 9, 16, 25]

// manner 2
resultArray = array.map( { (value: Int) in
    return value * value
})
// resultArray = [1, 4, 9, 16, 25]

// manner 3
resultArray = array.map( { value in
    return value * value
})
// resultArray = [1, 4, 9, 16, 25]

// manner 4
resultArray = array.map( { value in
    value * value
})
// resultArray = [1, 4, 9, 16, 25]

// manner 5
resultArray = array.map( { $0 * $0 })
// resultArray = [1, 4, 9, 16, 25]

// manner 6
resultArray = array.map { $0 * $0 }
// resultArray = [1, 4, 9, 16, 25]

// length comparison

array.map( { (value: Int) -> Int in return value * value } )
array.map( { (value: Int) in return value * value } )
array.map( { value in return value * value } )
array.map( { value in value * value } )
array.map( { $0 * $0 })
array.map { $0 * $0 }

// working with array of objects

class Car {
    var name: String!
    var price: Int!
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
}

let car1 = Car(name: "Toyota", price: 35000)
let car2 = Car(name: "Nissan", price: 25000)
let car3 = Car(name: "Subaru", price: 47000)
let car4 = Car(name: "Honda", price: 27999)
let carsArray = [car1, car2, car3, car4]

let prices = carsArray.map { $0.price! }
// prices = [35000, 25000, 47000, 27999]
let namesArray = carsArray.map { $0.name! }
var namesString = namesArray.joined(separator: ", ")
// Toyota, Nissan, Subaru, Honda

namesString = carsArray.map { $0.name! }.joined(separator: ", ")
// Toyota, Nissan, Subaru, Honda


// Example of using Filter function

let numbersArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
var filteredArray = [Int]()

// standard manner
for number in numbersArray {
    if number % 3 == 0 || number % 5 == 0 {
        filteredArray.append(number)
    }
}
// filteredArray = [3, 5, 6, 9, 10, 12, 15]

// using filter function
filteredArray = numbersArray.filter { $0 % 3 == 0 || $0 % 5 == 0 }
// filteredArray = [3, 5, 6, 9, 10, 12, 15]

// filter array of objects and then map this array to array of strings
// there is chaining of functions: filter > map
let lowPriceCars = carsArray.filter { $0.price! < 30000 }.map { $0.name! }
// lowPriceCars = ["Nissan", "Honda"]

// Example of Reduce
let elements = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// standard manner
var sum = 0
for number in elements {
    sum += number
}
// sum = 55

// with using reduce
sum = elements.reduce(0, { $0 + $1} )
// sum = 55

sum = elements.reduce(0, +)
// sum = 55

let isAllCarsHasA = carsArray.reduce(true) { (hasA, car) in
    hasA && car.name.lowercased().contains("a")
}
//isAllCarsHasA = true


// using reduce to calculate average car price
// map array > reduce array values > divide
let averageCarPrice = carsArray.map { Float($0.price) }.reduce(0, +) / Float(carsArray.count)
// averageCarPrice = 33749.8

// Example of Using FlatMap
var embeddedArray = [[1, 2, 3, 4], [5, 6, 7, 8]]
let flatArray = embeddedArray.flatMap { $0 }
// flatArray = [1, 2, 3, 4, 5, 6, 7, 8]

let carsAndNils = [car1, car2, nil, car4, nil, car3]
let validCars = carsAndNils.flatMap { $0?.name }
// validCars = ["Toyota", "Nissan", "Honda", "Subaru"]

// Chaining
let arrayOfArrays = [[1, 2, 3, 4], [55, 66, 77, 90], [15, 20, 30, 45]]
var resultOfChain = arrayOfArrays.flatMap { $0 }.filter { $0 % 2 == 0 }.reduce(0, +)
// resultOfChain = 212





