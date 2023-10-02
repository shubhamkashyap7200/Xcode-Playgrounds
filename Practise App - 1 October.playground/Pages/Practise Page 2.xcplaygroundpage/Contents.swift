//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

private func longestPrefix(inputStr: String) -> String {
    var separatedInputStrArray = inputStr.components(separatedBy: " ")
    guard let first = separatedInputStrArray.first else { return "" }
    var currentPrefix = ""
    var longestPrefix = ""
    
    for char in first {
        currentPrefix.append(char)
        
        for str in separatedInputStrArray {
            if !str.hasPrefix(currentPrefix) {
                return longestPrefix
            } 
        }
        
        longestPrefix = currentPrefix
    }
    
    return longestPrefix
}

longestPrefix(inputStr: "swift swiss swim swill swipe")


private func runLengthEncoding(inputStr: String) -> String {
    var resultValue = ""
    var currentCharacter: Character?
    var charCount = 0
    
    for char in inputStr {
        if char == currentCharacter {
            charCount += 1
        } else {
            if let current = currentCharacter {
                resultValue.append("\(current)\(charCount)")
            }
            
            currentCharacter = char
            charCount = 1
        }
    }
    
    if let current = currentCharacter {
        resultValue.append("\(current)\(charCount)")
    }
    
    return resultValue
}

runLengthEncoding(inputStr: "aaabbbbbbcc")


private func allStringPermutations(inputStr: String, currentString: String = "") {
    let inputStrArray = Array(inputStr)
    let length = inputStr.count
    
    if length == 0 {
        print(currentString)
        print("************")
    } else {
        print(currentString)
        
        for index in 0..<length {
            let left = String(inputStrArray[0..<index])
            let right = String(inputStrArray[index+1..<length])
            allStringPermutations(inputStr: left + right, currentString: currentString + String(inputStrArray[index]))
        }
    }
}

//allStringPermutations(inputStr: "hb")






func rle(i: String) -> String {
    var currentCharacter: Character?
    var charCount = 0
    var resultValue = ""
    
    for char in i {
        if char == currentCharacter {
            charCount += 1
        } else {
            if let current = currentCharacter {
                resultValue.append("\(current)\(charCount)")
            }
            
            currentCharacter = char
            charCount = 1
        }
    }
    
    if let current = currentCharacter {
        resultValue.append("\(current)\(charCount)")
    }

    return resultValue
}

rle(i: "iiiikkwwwwwww")


func asp(inputStr: String, currentString: String = "") {
    let length = inputStr.count
    var inputStrArray = Array(inputStr)
    
    if length == 0 {
        print(currentString)
        print("************")
    } else {
//        print(currentString)

        for index in 0..<length {
            let left = String(inputStrArray[0..<index])
            let right = String(inputStrArray[index+1..<length])
            asp(inputStr: left + right, currentString: currentString + String(inputStrArray[index]))
        }
    }
}


asp(inputStr: "TRY")



func cprefix(inputStr: String) -> String {
    var separtedArray = inputStr.components(separatedBy: " ")
    guard let first = separtedArray.first else { return "" }
    var currentPrefix = ""
    var longestPrefix = ""
    
    for char in first {
        currentPrefix.append(char)
        
        for str in separtedArray {
            if !str.hasPrefix(currentPrefix) {
                return longestPrefix
            }
        }
        
        longestPrefix = currentPrefix
    }
    
    return longestPrefix
}

cprefix(inputStr: "swift swifty swiftly")




private func isNumberPrime(inputInt: Int) -> Bool {
    guard inputInt >= 2 else { return false }
    guard inputInt != 2 else { return true }
    
    let max = Int(ceil(sqrt(Double(inputInt))))
    
    for num in 2...max {
        if inputInt % num == 0 {
            return false
        }
    }
    
    return true
}

isNumberPrime(inputInt: 165721)
