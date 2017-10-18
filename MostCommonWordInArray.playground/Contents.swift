//: Playground - noun: a place where people can play

let array = ["This", "Test", "Swift", "Never", "Swift", "Test", "Swift"]

func getMostCommonWord(array: [String]) -> String {
    
    var dict = [String: Int]()
    
    for word in array {
        if let count = dict[word] {
            dict[word] = count + 1
        } else {
            dict[word] = 1
        }
    }
    
    var mostCommonWord = ""
    for key in dict.keys {
        if mostCommonWord == "" {
            mostCommonWord = key
        }
        if let nextCount = dict[key], let prevCount = dict[mostCommonWord] {
            if nextCount > prevCount {
                mostCommonWord = key
            }
        }
    }
    
    return mostCommonWord
}

print(getMostCommonWord(array: array))
// Swift

func getMostCommonWordUsingMap(array: [String]) -> String {
    
    var dict = [String: Int]()
    
    for word in array {
        if let count = dict[word] {
            dict[word] = count + 1
        } else {
            dict[word] = 1
        }
    }
    
    var mostCommonWord = ""
    
    if let first = (dict.sorted { $0.1 > $1.1}).first {
        mostCommonWord = first.key
    }
    
    return mostCommonWord
}

print(getMostCommonWordUsingMap(array: array))
// Swift

