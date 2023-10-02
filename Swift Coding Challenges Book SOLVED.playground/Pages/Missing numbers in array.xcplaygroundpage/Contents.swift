//: [Previous](@previous)

import Foundation

// Using Subtraction Method
private func missingNumbersInArrayUsingSubtraction(inputIntArray: [Int]) -> [Int] {
    let inputSet = Set(inputIntArray)
    let testSet = Set(1...100)
    return Array(testSet.subtracting(inputSet)).sorted()
}

missingNumbersInArrayUsingSubtraction(inputIntArray: [7,8,10])

// Using Loops
private func missingNumbersInArrayUsingLoops(inputIntArray: [Int]) -> [Int] {
    let correctArray = Array(1...100)
    let inputSet = Set(inputIntArray)
    var missingNumbers = [Int]()
    
    for number in correctArray {
        if !inputSet.contains(number) {
            missingNumbers.append(number)
        }
    }
    
    return missingNumbers
}

missingNumbersInArrayUsingLoops(inputIntArray: [1,10,11,56])































