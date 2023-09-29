//: [Previous](@previous)

import Foundation


private func reverseArray(inputStr: [Any]) -> [Any] {
    var reversedArray = [Any]()
    var intialIndex = 0
    var finalIndex = inputStr.count - 1

    for index in stride(from: finalIndex, through: intialIndex, by: -1) {
        reversedArray.append(inputStr[index])
    }
    
    return reversedArray
}


reverseArray(inputStr: ["Apple", "1", "Sony", "Lenovo", "Asus"])
