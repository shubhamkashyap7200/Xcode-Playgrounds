import Foundation


// Using Set
private func areStringLettersUnique(inputStr: String) -> Bool {
    return inputStr.count == Set(inputStr).count
}

areStringLettersUnique(inputStr: "ABA")

// Using For Loop
private func areStringLettersUniqueUsingLoop(inputStr: String) -> Bool {
    var usedLetterArray = [Character]()
    
    for letter in inputStr {
        if usedLetterArray.contains(letter) {
            return false
        }
        
        usedLetterArray.append(letter)
    }
    
    return true
}

areStringLettersUniqueUsingLoop(inputStr: "ABA")
