//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

private func isStringPangram(inputStr: String) -> Bool {
    let set = Set(inputStr.lowercased())
    let letters = set.filter { $0 >= "a" && $0 <= "z"}
    return letters.count == 26
}

isStringPangram(inputStr: "The quick brown fox jumps over the lazy dog")
isStringPangram(inputStr: "The quick brown fox jump over the lazy dog")
