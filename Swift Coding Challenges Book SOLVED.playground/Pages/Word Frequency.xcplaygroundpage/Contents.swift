//: [Previous](@previous)

import Foundation

private func calculateWordFrequency(filename: String, count: String) -> Int {
    guard let inputString = try? String(contentsOfFile: filename) else { return 0 }
    var nonletters = CharacterSet.letters.inverted
    nonletters.remove("'")
    
    let allWords = inputString.components(separatedBy: nonletters)
    let wordsSet = NSCountedSet(array: allWords)
    
    return wordsSet.count
}
