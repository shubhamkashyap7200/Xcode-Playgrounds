//: [Previous](@previous)

import Foundation

private func printLastLines(filename: String, lineCount: Int) {
    guard let input = try? String(contentsOfFile: filename) else { return }
    
    var lines = input.components(separatedBy: "\n")
    guard lines.count > 0 else { return }
    
    lines.reverse()
    
    for i in 0..<min(lines.count, lineCount) {
        print(lines[i])
    }
}

