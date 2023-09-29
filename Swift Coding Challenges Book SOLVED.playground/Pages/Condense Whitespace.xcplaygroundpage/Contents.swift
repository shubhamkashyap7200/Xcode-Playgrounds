//: [Previous](@previous)

import Foundation

// Using Loops
private func condenseWhitespace(inputStr: String) -> String {
    var seenSpace = false
    var returnValue = ""
    
    for char in inputStr {
        if char == " " {
            if seenSpace { continue }
            seenSpace = true
        } else {
            seenSpace = false
        }
        
        returnValue.append(char)
    }
    
    return returnValue
}

condenseWhitespace(inputStr: "a   r       i")


// Using Replacing Occurences
private func condenseWhitespaceUsingReplacingOccurences(inputStr: String) -> String {
    return inputStr.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}

condenseWhitespaceUsingReplacingOccurences(inputStr: "    a  b       e")
