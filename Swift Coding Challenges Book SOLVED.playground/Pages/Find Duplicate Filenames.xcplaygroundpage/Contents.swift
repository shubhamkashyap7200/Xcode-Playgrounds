//: [Previous](@previous)

import Foundation

private func findDuplicateFilename(in directory: String) -> [String] {
    let fm = FileManager.default
    let directoryURL = URL(fileURLWithPath: directory)
    
    guard let files = fm.enumerator(at: directoryURL, includingPropertiesForKeys: nil) else { return [] }
    var duplicates = Set<String>()
    var seen = Set<String>()
    
    for case let file as URL in files {
        guard file.hasDirectoryPath == false else { continue }
        let filename = file.lastPathComponent
        
        if seen.contains(filename) {
            duplicates.insert(filename)
        }
        
        seen.insert(filename)
    }
    
    return Array(duplicates)
}
