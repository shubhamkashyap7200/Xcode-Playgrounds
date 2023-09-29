//: [Previous](@previous)

import Foundation

private func numberOfVowelsAndConsonents(inputStr: String) -> (Int, Int) {
    let vowels = "aieou"
    let consonents = "bcdfghjklmnpqrstvwxyz"
    var vowelsCount = 0
    var consonentsCount = 0
    
    for char in inputStr.lowercased() {
        if vowels.contains(char) {
            vowelsCount += 1
        } else if consonents.contains(char) {
            consonentsCount += 1
        }
    }
    
    return (vowelsCount,consonentsCount)
}

numberOfVowelsAndConsonents(inputStr: "Swift Coding Challenges")
numberOfVowelsAndConsonents(inputStr: "Mississippi")
