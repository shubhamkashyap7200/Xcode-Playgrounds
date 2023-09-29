//: [Previous](@previous)

import Foundation


// Using Pow function method
private func customSqaureRootUsingPow(inputInt: Int) -> Int {
    return Int(floor(pow(Double(inputInt), 0.5)))
}


customSqaureRootUsingPow(inputInt: 16)


// Using Brute force method
private func customSqaureRootUsingBruteForce(inputInt: Int) -> Int {
    guard inputInt != 1 else { return 1}
    
    for i in 0...inputInt / 2 + 1 {
        if i * i > inputInt {
            return i - 1
        }
    }
    
    return 0
}

customSqaureRootUsingBruteForce(inputInt: 16777216)


// Using Binary Search
private func customSqaureRootUsingBinarySearch(inputInt: Int) -> Int {
    guard inputInt != 1 else { return 1 }
    var lowerBound = 0
    var upperBound = 1 + inputInt / 2
    
    while lowerBound + 1 < upperBound {
        let middle = lowerBound + ((upperBound - lowerBound) / 2)
        let middleSqaured = middle * middle
        
        if middleSqaured == inputInt {
            return middle
        } else if middleSqaured < inputInt {
            lowerBound = middle
        } else if middleSqaured > inputInt {
            upperBound = middle
        }
    }
    
    return lowerBound
}

customSqaureRootUsingBinarySearch(inputInt: 15)
