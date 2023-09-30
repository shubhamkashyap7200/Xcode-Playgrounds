//: [Previous](@previous)

import Foundation
import Cocoa
import AppKit

// For iOS -- This code will only work id UIKit is imported
//private func convertImagesForiOS(in directory: String) {
//    let fm = FileManager.default
//    let directoryURL = URL(fileURLWithPath: directory)
//    guard let files = try? fm.contentsOfDirectory(at: directoryURL, includingPropertiesForKeys: nil) else { return }
//
//    for file in files {
//        guard file.pathExtension == "jpg" || file.pathExtension == " jpeg" else { continue }
//        guard let image = UIImage(contentsOfFile: file.path) else { continue }
//        guard let png = UIImagePNGRepresentation(image) else { continue }
//
//        let newFileName = file.deletingPathExtension().appendingPathExtension("png")
//        _ = try? png.write(to: newFileName)
//    }
//}


// For macOS
private func convertImagesForiOS(in directory: String) {
    let fm = FileManager.default
    let directoryURL = URL(fileURLWithPath: directory)
    guard let files = try? fm.contentsOfDirectory(at: directoryURL, includingPropertiesForKeys: nil) else { return }
    
    for file in files {
        guard file.pathExtension == "jpg" || file.pathExtension == " jpeg" else { continue }
        guard let image = NSImage(contentsOfFile: file.path) else { continue }
        
        guard let tiffData = image.tiffRepresentation else { continue }
        guard let imagRep = NSBitmapImageRep(data: tiffData) else { continue }
        guard let png = imagRep.representation(using: .png, properties: [:]) else { continue }
        
        
        let newFileName = file.deletingPathExtension().appendingPathExtension("png")
        _ = try? png.write(to: newFileName)
    }
}


