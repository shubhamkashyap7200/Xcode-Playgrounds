//: [Previous](@previous)

import Foundation

extension Collection where Iterator.Element: Equatable {
    func findIndexOfElement(indexOf: Iterator.Element) -> Int? {
        for (index, item) in self.enumerated() {
            if item == indexOf {
                return index
            }
        }
        
        return nil
    }
    
}

[1, 2, 3].findIndexOfElement(indexOf: 5)
[1, 2, 3].findIndexOfElement(indexOf: 3)
