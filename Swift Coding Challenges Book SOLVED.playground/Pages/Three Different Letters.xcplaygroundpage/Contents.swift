//: [Previous](@previous)

import Foundation

private func areThreeLetterDifferent(inputStr1: String, inputStr2: String) -> Bool {
    guard inputStr1.count == inputStr2.count else { return false }
    let firstArray = Array(inputStr1)
    let secondArray = Array(inputStr2)
    var countOfDifferentCharacters = 0
    
    for (index, char) in firstArray.enumerated() {
        if secondArray[index] != char {
            countOfDifferentCharacters += 1
        }
    }
    
    return (countOfDifferentCharacters <= 3 && countOfDifferentCharacters > 0) ? true : false
    
}

areThreeLetterDifferent(inputStr1: "Clamp", inputStr2: "Cramp")
areThreeLetterDifferent(inputStr1: "Clamp", inputStr2: "Crams")
areThreeLetterDifferent(inputStr1: "Clamp", inputStr2: "Grams")
areThreeLetterDifferent(inputStr1: "Clamp", inputStr2: "Grans")
areThreeLetterDifferent(inputStr1: "Clamp", inputStr2: "Clam")
areThreeLetterDifferent(inputStr1: "clamp", inputStr2: "maple")
