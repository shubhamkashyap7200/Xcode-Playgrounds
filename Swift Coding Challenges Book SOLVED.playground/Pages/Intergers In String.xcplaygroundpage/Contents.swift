//: [Previous](@previous)

import Foundation

private func isIntegerInString(inputStr: String) -> Bool {
    for char in inputStr {
        if Int(String(char)) == nil {
            return false
        }
    }
    
    return true
}

isIntegerInString(inputStr: "1.02")


// Using Range Opertor
private func isIntegerInStringUsingRangeOf(inputStr: String) -> Bool {
    return inputStr.rangeOfCharacter(from: CharacterSet(charactersIn: "0123456789")) == nil
}

isIntegerInStringUsingRangeOf(inputStr: "9223372036854775808")
