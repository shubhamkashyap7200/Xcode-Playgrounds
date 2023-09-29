//: [Previous](@previous)

import Foundation

private func numberOfCharsInRunLength(inputStr: String) -> String {
    var currentChar: Character?
    var returnValue = ""
    var charCount = 0
    
    for char in inputStr {
        if char == currentChar {
            charCount += 1
        } else {
            if let current = currentChar {
                returnValue.append("\(current)\(charCount)")
            }
            
            currentChar = char
            charCount = 1
        }
    }
    
    if let current = currentChar {
        returnValue.append("\(current)\(charCount)")
    }
    
    return returnValue
}


numberOfCharsInRunLength(inputStr: "aabbccc")
