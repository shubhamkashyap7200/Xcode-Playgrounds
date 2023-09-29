//: [Previous](@previous)

import Foundation

private func longestPrefix(inputStr: String) -> String {
    let parts = inputStr.components(separatedBy: " ")
    guard let first = parts.first else { return "" }
    var currentPrefix = ""
    var longestPrefix = ""
    
    for char in first {
        currentPrefix.append(char)
        
        for str in parts {
            if !str.hasPrefix(currentPrefix) {
                return longestPrefix
            }
        }
        
        longestPrefix = currentPrefix
    }
    
    return longestPrefix
}


longestPrefix(inputStr: "swift switch swill swim")
longestPrefix(inputStr: "flip flap flop")
