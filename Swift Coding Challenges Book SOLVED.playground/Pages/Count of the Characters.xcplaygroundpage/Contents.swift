//: [Previous](@previous)

import Foundation

private func countSpecificCharacterInString(inputStr: String, specificStr: Character) -> Int {
    var count = 0
    
    for char in inputStr {
        if char == specificStr {
            count += 1
        }
    }
    
    return count
}


countSpecificCharacterInString(inputStr: "Mississippi", specificStr: "i")
countSpecificCharacterInString(inputStr: "Hacking with Swift", specificStr: "i")


// Using Reduce Func
private func countSpecificCharacterInStringUsingReduceFunc(inputStr: String, specificStr: Character) -> Int {
    return inputStr.reduce(0) {
        $1 == specificStr ? $0 + 1 : $0
    }
}


// Using Replacing Occurrences
private func countSpecificCharacterInStringUsingReplacing(inputStr: String, specificStr: String) -> Int {
    let modifiedStr = inputStr.replacingOccurrences(of: specificStr, with: "")
    
    return inputStr.count - modifiedStr.count
}
