//: [Previous](@previous)

import Foundation

private func getDocumentsDirectory() -> URL {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    return paths[0]
}

getDocumentsDirectory()
