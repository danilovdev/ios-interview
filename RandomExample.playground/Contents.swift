//: Playground - noun: a place where people can play

import UIKit

let simpleRandom = arc4random()
// for example it can generate number 2772706316

let randomWithBound = arc4random() % 100
// it will generate number in range from 0 to 100
// not including upper bound

let nextRandomWithBound = arc4random_uniform(256)
// it will generate number in range from 0 to 256
// not including upper bound

// get random number with lower and upper bounds
// for example from 10 (including) to 20 (not including)
func getRandomInRange(lower: Int, upper: Int) -> Int {
    let result = lower + Int(arc4random_uniform(UInt32(upper - lower)))
    return result
}

// if we want to include upper bound - simply add 1
func getRandomInRangeIncludingUpperBound(lower: Int, upper: Int) -> Int {
    let result = 1 + lower + Int(arc4random_uniform(UInt32(upper - lower)))
    return result
}

// if we need to generate array with random numbers
func generateRandomArray(count: Int, maxNum: Int) -> [Int] {
    var array = [Int]()
    for i in 0..<count {
        let random = Int(arc4random_uniform(UInt32(maxNum)))
        array.append(random)
    }
    return array
}

generateRandomArray(count: 10, maxNum: 100)
// [62, 37, 70, 59, 54, 66, 58, 96, 62, 20]

generateRandomArray(count: 10, maxNum: 10)
// [7, 7, 9, 4, 7, 0, 6, 8, 1, 2]

// if we need to generate array with random
// non-repeating numbers

func generateRandomNonRepeatingArray(count: Int, maxNum: Int) -> [Int] {
    var numbers = Set<Int>()
    while numbers.count < count {
        let random = Int(arc4random_uniform(UInt32(maxNum)))
        numbers.insert(random)
    }
    return Array(numbers)
}

print(generateRandomNonRepeatingArray(count: 10, maxNum: 19))





//// Generate random UIColor
//
//let redComponent = CGFloat(arc4random_uniform(256)) / 256
//let greenComponent = CGFloat(arc4random_uniform(256)) / 256
//let blueComponent = CGFloat(arc4random_uniform(256)) / 256
////let randomColor = UIColor(red: redComponent, green: greenComponent, blue: blueComponent, alpha: 1.0)
//
//func randomRGBColor() -> UIColor {
//    let redComponent = CGFloat(arc4random_uniform(256)) / 256
//    let greenComponent = CGFloat(arc4random_uniform(256)) / 256
//    let blueComponent = CGFloat(arc4random_uniform(256)) / 256
//    let randomColor = UIColor(red: redComponent,
//                              green: greenComponent,
//                              blue: blueComponent,
//                              alpha: 1.0)
//    return randomColor
//}
//
//func randomHSBColor() -> UIColor {
//    let hue = CGFloat(arc4random_uniform(256)) / 256
//    let saturation = 0.5 + CGFloat(arc4random_uniform(128)) / 256
//    let brightness = 0.5 + CGFloat(arc4random_uniform(128)) / 256
//    return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1.0)
//}
//
////extension UIColor {
////    static func randomRGBColor() -> UIColor {
////        let redComponent = CGFloat(arc4random_uniform(256)) / 256
////        let greenComponent = CGFloat(arc4random_uniform(256)) / 256
////        let blueComponent = CGFloat(arc4random_uniform(256)) / 256
////        let randomColor = UIColor(red: redComponent,
////                                  green: greenComponent,
////                                  blue: blueComponent,
////                                  alpha: 1.0)
////        return randomColor
////    }
////
////    static func randomHSBColor() -> UIColor {
////        let hue = CGFloat(arc4random_uniform(256)) / 256
////        let saturation = 0.5 + CGFloat(arc4random_uniform(128)) / 256
////        let brightness = 0.5 + CGFloat(arc4random_uniform(128)) / 256
////        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1.0)
////    }
////}
//
//
//extension UIColor {
//    class func randomRGBColor(randomAlpha: Bool = false) -> UIColor {
//        let redComponent = CGFloat(arc4random_uniform(256)) / 256
//        let greenComponent = CGFloat(arc4random_uniform(256)) / 256
//        let blueComponent = CGFloat(arc4random_uniform(256)) / 256
//        let alphaValue = randomAlpha ? CGFloat(arc4random_uniform(256)) / 256 : 1.0
//        let randomColor = UIColor(red: redComponent,
//                                  green: greenComponent,
//                                  blue: blueComponent,
//                                  alpha: alphaValue)
//        return randomColor
//    }
//
//    class func randomHSBColor() -> UIColor {
//        let hue = CGFloat(arc4random_uniform(256)) / 256
//        let saturation = 0.5 + CGFloat(arc4random_uniform(128)) / 256
//        let brightness = 0.5 + CGFloat(arc4random_uniform(128)) / 256
//        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1.0)
//    }
//}
//
//UIColor.randomRGBColor()
//UIColor.randomRGBColor(randomAlpha: true)
//
//
//func compareColors(color1: UIColor, color2: UIColor) -> Bool {
//    var red1: CGFloat = 0
//    var green1: CGFloat = 0
//    var blue1: CGFloat = 0
//    var alpha1: CGFloat = 0
//    color1.getRed(&red1, green: &green1, blue: &blue1, alpha: &alpha1)
//
//    var red2: CGFloat = 0
//    var green2: CGFloat = 0
//    var blue2: CGFloat = 0
//    var alpha2: CGFloat = 0
//    color2.getRed(&red2, green: &green2, blue: &blue2, alpha: &alpha2)
//
//    return ( red1 == red2 && green1 == green2 && blue1 == blue2 && alpha1 == alpha2 )
//}
//
//let c1 = UIColor(red: 0.4, green: 0.3, blue: 0.2, alpha: 1)
//let c2 = UIColor(red: 0.4, green: 0.3, blue: 0.2, alpha: 1)
//compareColors(color1: c1, color2: c2)
//
//
////func generateRandomColorsArray(count: Int) -> [UIColor] {
////    var colors = [UIColor]()
////    for i in 0..<count {
////        let color = randomRGBColor()
////        colors.append(color)
////    }
////    return colors
////}
//
//func generateRandomColorsArray(count: Int) -> [UIColor] {
//    var colors = [UIColor]()
//    while colors.count < count {
//        let nextColor = randomRGBColor()
//        var j = 0
//        for c in colors {
//            if compareColors(color1: nextColor, color2: c) {
//                j += 1
//            }
//        }
//        if j == 0 {
//            colors.append(nextColor)
//        } else {
//            print("there was copy")
//        }
//    }
//    return colors
//}

let str1 = "coc jaaj"

func isPalindromePermutation(_ str: String) -> Bool {
    let table = buildFrequencyTable(str)
    return countOdds(table)
}

func buildFrequencyTable(_ str: String) -> [Character: Int] {
    let cleanStr = str.lowercased().replacingOccurrences(of: " ", with: "")
    var dict = [Character: Int]()
    for ch in cleanStr {
        if let count = dict[ch] {
            dict[ch] = count + 1
        } else {
            dict[ch] = 1
        }
    }
    return dict
}

func countOdds(_ table: [Character: Int]) -> Bool {
    var oddFound = false
    for count in table.values {
            if count % 2 == 1 {
                if oddFound {
                    return false
                }
                oddFound = true
            }
    }
    return true
}

print(isPalindromePermutation(str1))






