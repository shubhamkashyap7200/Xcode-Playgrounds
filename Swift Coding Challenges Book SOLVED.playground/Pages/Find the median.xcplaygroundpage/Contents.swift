//: [Previous](@previous)

import Foundation

extension Collection where Iterator.Element == Int {
    func findingTheMedian() -> Double? {
        guard count != 0 else { return nil }
        
        let sorted = self.sorted()
        let middlePoint = sorted.count / 2
        
        if sorted.count % 2 == 0 {
            return Double(sorted[middlePoint] + sorted[middlePoint - 1]) / 2
        } else {
            return Double(sorted[middlePoint])
        }
    }
}


[1, 2, 3, 4].findingTheMedian()
[1, 3, 5, 7, 9].findingTheMedian()

