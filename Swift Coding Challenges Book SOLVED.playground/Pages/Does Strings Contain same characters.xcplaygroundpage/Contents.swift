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



// Using Remove Func using Brute force method
private func doStringContainSameCharactersUsingRemoveFunc(inputStr1: String, inputStr2: String) -> Bool {
    var checkString = inputStr2
    
    for letter in inputStr1 {
        if let index = checkString.firstIndex(of: letter) {
            checkString.remove(at: index)
        } else {
            return false
        }
    }
    
    return checkString.count == 0
}

































private func samecharacters(i1: String, i2:String) -> Bool {
    var checkString = i2
    
    for char in i1 {
        if let index = checkString.firstIndex(of: char) {
            checkString.remove(at: index)
        } else {
            return false
        }
    }
    
    return checkString.count == 0
    
    
    // Using Sorted
    let array1 = Array(i1)
    let array2 = Array(i2)
    
    return array1.count == array2.count && array1.sorted() == array2.sorted()
}
