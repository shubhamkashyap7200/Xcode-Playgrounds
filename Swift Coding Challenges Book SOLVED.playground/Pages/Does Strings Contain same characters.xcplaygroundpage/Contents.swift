import Foundation

// Using double looping
private func doStringsContainSameCharacters(inputStr1: String, inputStr2: String) -> Bool {
    var inputStr1Array = Array(inputStr1)
    
    if Set(inputStr1).count == Set(inputStr2).count {
        for char in inputStr2 {
            if !inputStr1Array.contains(char) {
                return false
            }
        }
        
        return true
        
    } else {
        return false
    }
}

doStringsContainSameCharacters(inputStr1: "abc", inputStr2: "aaa")


// Using Sorted Func
private func doStringContainSameCharactersUsingSortedFunc(inputStr1: String, inputStr2: String) -> Bool {
    let array1 = Array(inputStr1)
    let array2 = Array(inputStr2)
    
    return (array1.count == array2.count && array1.sorted() == array2.sorted())
}

doStringContainSameCharactersUsingSortedFunc(inputStr1: "abc", inputStr2: "aaa")



// Using Remove Func
private func doStringContainSameCharactersUsingRemoveFunc(inputStr1: String, inputStr2: String) -> Bool {
    
}
