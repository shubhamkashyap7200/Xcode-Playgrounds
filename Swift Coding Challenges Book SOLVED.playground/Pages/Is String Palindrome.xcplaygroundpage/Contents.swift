import Foundation


// Using Loops
private func isStringPalindrome(inputStr: String) -> Bool {
    let characters = Array(inputStr.lowercased()) // case insensitive
    var intialIndex = 0
    var finalIndex = inputStr.count - 1
    
    
    while intialIndex < finalIndex {
        if characters[intialIndex] != characters[finalIndex] {
            return false
        }
        
        intialIndex += 1
        finalIndex -= 1
    }
    
    return true
}

isStringPalindrome(inputStr: "nitun")

// Using Reversed
private func isStringPalindromeUsingReversed(inputStr: String) -> Bool {
    let inputStrLowercased = inputStr.lowercased()
    return inputStrLowercased.reversed() == Array(inputStrLowercased)
}

isStringPalindrome(inputStr: "Nitun")
