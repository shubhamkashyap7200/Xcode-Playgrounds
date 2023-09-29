//: [Previous](@previous)

import Foundation

extension String {
    func customImplementedContains(inputStr: String) -> Bool {
        return self.lowercased().range(of: inputStr.lowercased()) != nil
    }
}

"Hello".customImplementedContains(inputStr: "EiL")

