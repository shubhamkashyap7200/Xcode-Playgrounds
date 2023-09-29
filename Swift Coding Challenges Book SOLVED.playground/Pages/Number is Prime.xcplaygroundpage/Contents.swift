//: [Previous](@previous)

import Foundation


// Using Brute Force
private func isNumberPrime(inputInt: Int) -> Bool {
    guard inputInt >= 2 else { return false }
    
    for i in 2..<inputInt {
        if inputInt % i == 0 {
            return false
        }
    }
    
    return true
}

//isNumberPrime(inputInt: 16777259)

// Using Optimised Path
private func isNumberPrimeUsingOptimisedPath(inputInt: Int) -> Bool {
    guard inputInt >= 2 else { return false }
    guard inputInt != 2 else { return true }
    
    let max = Int(ceil(sqrt(Double(inputInt))))
    
    for i in 2...max {
        if inputInt % i == 0 {
            return false
        }
    }
    
    return true
}

isNumberPrimeUsingOptimisedPath(inputInt: 3)
