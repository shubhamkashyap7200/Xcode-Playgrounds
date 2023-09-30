//: [Previous](@previous)

import Foundation

extension Collection where Iterator.Element: Comparable {
    func findTheNSmallestInCollection(count: Int) -> [Iterator.Element] {
        let sorted = self.sorted()
        return Array(sorted.prefix(count))
    }
}

[1, 2, 3, 4].findTheNSmallestInCollection(count: 2)
