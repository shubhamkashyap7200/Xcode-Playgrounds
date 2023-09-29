//: [Previous](@previous)

import Foundation


// Using Loops
private func powerFunction(base: Int, power: Int) -> Int {
    guard base > 0, power > 0 else { return 0 }
    if power == 1 { return base }
    var output = 1
    
    for _ in 1...power {
        output = output * base
    }
    
    return output
}

powerFunction(base: 4, power: 3)

// Using Loops
private func powerFunctionUsingRecursion(base: Int, power: Int) -> Int {
    guard base > 0, power > 0 else { return 0 }
    if power == 1 { return base }

    return base * powerFunctionUsingRecursion(base: base, power: power - 1)
}

powerFunctionUsingRecursion(base: 4, power: 3)
