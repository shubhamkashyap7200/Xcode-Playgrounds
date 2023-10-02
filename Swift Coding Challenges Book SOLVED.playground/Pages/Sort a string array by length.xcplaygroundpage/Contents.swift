//: [Previous](@previous)

import Foundation

extension Collection where Iterator.Element == String {
    func sortArrayAccordingToLength() -> [String] {
        return self.sorted { $0.count > $1.count }
    }
}

["paul", "taylor", "adele"].sortArrayAccordingToLength()






























extension Collection where Iterator.Element == String {
    private func sortArrayByLength() -> [String] {
        return self.sorted { $0.count > $1.count }
    }
}



// Custom sorting algorithm for array of string
private func sortArrayByLength(inputStrArray: [String]) -> [String] {
    var unSortedArray = inputStrArray
    let initalIndex = 0
    let finalIndex = unSortedArray.count - 1
    
    for index in stride(from: finalIndex, to: initalIndex, by: -1) {
        for j in 1...index {
            if unSortedArray[j-1] > unSortedArray[j] {
                let temp = unSortedArray[j-1]
                unSortedArray[j-1] = unSortedArray[j]
                unSortedArray[j] = temp
            }
        }
    }
    
    return unSortedArray
}

sortArrayByLength(inputStrArray: ["paul", "taylor", "adele"])



func sortStringCountByLength(inputArray: [String]) -> [String] {
    return inputArray.sorted { $0.count > $1.count }
}

sortStringCountByLength(inputArray: ["paul", "taylor", "adele"])
