//: [Previous](@previous)

import Foundation

private func copyRecursively(source: String, destination: String) -> Bool {
    let fm = FileManager.default
    var isDirectory: ObjCBool = false
    
    guard fm.fileExists(atPath: source, isDirectory: &isDirectory) || isDirectory.boolValue == false else { return false }
    let sourceURL = URL(fileURLWithPath: source)
    let destinationURL = URL(fileURLWithPath: destination)
    
    do {
        try fm.copyItem(at: sourceURL, to: destinationURL)
    } catch {
        print(error.localizedDescription)
        return false
    }
    
    return true
}
