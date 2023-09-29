//: [Previous](@previous)

import Foundation

private func reverseArray(inputArray: [Any]) -> [Any] {
    var reverseArray = [Any]()
    let intialIndex = 0
    let finalIndex = inputArray.count - 1
    
    for index in stride(from: finalIndex, through: intialIndex, by: -1) {
        reverseArray.append(inputArray[index])
    }
    
    return reverseArray
}

reverseArray(inputArray: ["a", 5, "Lamb"])

private func reverseString(str: String) -> String {
    var inputArray = Array(str)
    var reverseArray = [Character]()
    let intialIndex = 0
    let finalIndex = inputArray.count - 1

    for i in stride(from: finalIndex, through: intialIndex, by: -1) {
        reverseArray.append(inputArray[i])
    }
    
    return String(reverseArray)
}

reverseString(str: "Hello")

private func reverseWordInString(inputStr: String) -> String {
    let separtedArray = inputStr.components(separatedBy: " ")
    var resultStrArray = [String]()
    
    for i in separtedArray {
        resultStrArray.append(reverseString(str: i))
    }
    
    return resultStrArray.joined(separator: " ")
}

reverseWordInString(inputStr: "Swift Coding Challenges")

// Using Optimised Method
private func reverseWordInStringUsingOptimisedMethod(inputStr: String) -> String {
    let separtedArray = inputStr.components(separatedBy: " ")
    let reversedArray = separtedArray.map { String($0.reversed()) }
    return reversedArray.joined(separator: " ")
}

reverseWordInStringUsingOptimisedMethod(inputStr: "The quick brown fox")
