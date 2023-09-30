//: [Previous](@previous)

import Foundation

// using the loops
extension Collection where Iterator.Element == Int {
    func countTheNumberOfInteger(count: Character) -> Int {
        var totalCount = 0
        
        for item in self {
            let str = String(item)
            
            for char in str {
                if char == count {
                    totalCount += 1
                }
            }
        }
        
        return totalCount
    }
}

[1, 11, 111, 1111].countTheNumberOfInteger(count: "5")


// using functional prpgramming
extension Collection where Iterator.Element == Int {
    func countTheNumberOfIntegerUsingFuntionalProgramming(count: Character) -> Int {
        return self.reduce(0) {
            $0 + String($1).filter { (char: Character) -> Bool in
                char == count
            }.count
        }
    }
}

[55555].countTheNumberOfIntegerUsingFuntionalProgramming(count: "5")


extension Collection where Iterator.Element == Int {
    private func a(count: Character) -> Int {
        var totalCount = 0
        
        for item in self {
            let str = String(item)
            
            for char in str {
                if char == count {
                    totalCount += 1
                }
            }
        }
        
        return totalCount
    }
}

[55555].a(count: "5")
