//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

private func allStringPermutations(inputStr: String, currentStr: String = "") {
    let strArray = Array(inputStr)
    let length = inputStr.count
    
    if length == 0 {
        print(currentStr)
        print("*********")
    } else {
        print(currentStr)
        
        // Start Looping
        for i in 0..<length {
            // get the letter before me
            let left = String(strArray[0 ..< i])
            
            // get the letter after me
            let right = String(strArray[i+1 ..< length])
            
            // put them together and goes ahead -- Recall function
            allStringPermutations(inputStr: left + right, currentStr: currentStr + String(strArray[i]))
        }
    }
}

allStringPermutations(inputStr: "ab")
