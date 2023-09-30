//: [Previous](@previous)

import Foundation

extension Collection where Iterator.Element == String {
    func sortArrayAccordingToLength() -> [String] {
        return self.sorted { $0.count > $1.count }
    }
}

["paul", "taylor", "adele"].sortArrayAccordingToLength()
