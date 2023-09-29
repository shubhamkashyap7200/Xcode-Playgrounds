//: [Previous](@previous)

import Foundation

private func generateRandomNumberBetween(min: Int, max: Int) -> Int {
//    return Int.random(in: min...max)
    return Int(arc4random_uniform(UInt32(max-min+1))) + min
}

generateRandomNumberBetween(min: 1, max: 5)
