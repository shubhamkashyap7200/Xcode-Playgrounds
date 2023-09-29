//: [Previous](@previous)

import Foundation

// Using Brute Force
private func removeDuplicatesFromString(inputStr: String) -> String {
    var characterArray = [Character]()
    
    for char in inputStr {
        if !characterArray.contains(char) {
            characterArray.append(char)
        }
    }
    
    return String(characterArray)
}

removeDuplicatesFromString(inputStr: "hello")


// Using Dictionary

private func removeDuplicatesFromStringUsingDictionary(inputStr: String) -> String {
    var charactersArray = [Character : Bool]()
    
    let result = inputStr.filter {
        charactersArray.updateValue(true, forKey: $0) == nil
    }
    
    return String(result)
}

removeDuplicatesFromStringUsingDictionary(inputStr: "hello")
