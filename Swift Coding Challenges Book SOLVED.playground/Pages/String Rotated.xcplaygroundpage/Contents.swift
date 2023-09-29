//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

private func isStringRotated(inputStr1: String, inputStr2: String) -> Bool {
    guard inputStr1.count == inputStr2.count else { return false }
    var combined = inputStr1 + inputStr1
    return combined.contains(inputStr2)
}

isStringRotated(inputStr1: "abc", inputStr2: "cab")
