//: [Previous](@previous)

import Foundation

extension Collection {
    func customMap<T>(_ transform: (Iterator.Element) throws -> T) rethrows -> [T] {
        var returnValue = [T]()
        
        for item in self {
            returnValue.append(try transform(item))
        }
        
        return returnValue
    }
}

["1","2"].customMap { Int($0) }
