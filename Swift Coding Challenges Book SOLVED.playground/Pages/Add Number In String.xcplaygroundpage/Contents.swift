//: [Previous](@previous)

import Foundation

private func sumOfNumbersInString(inputStr: String) -> Int {
    var currentNum = ""
    var totalSum = 0
    
    for char in inputStr {
        let str = String(char)
        
        if Int(str) != nil {
            currentNum += str
        } else {
            totalSum += Int(currentNum) ?? 0
            currentNum = ""
        }
    }
    
    totalSum += Int(currentNum) ?? 0
    return totalSum
}

sumOfNumbersInString(inputStr: "a1b2c3")
sumOfNumbersInString(inputStr: "a10b20c30")
