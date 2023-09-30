//: [Previous](@previous)

import Foundation

private func logAMessage(log message: String, to logFile: String) {
    var existingLog = (try? String(contentsOfFile: logFile)) ?? ""
    existingLog.append("\(Date()): \(message)\n")
    
    do {
        try existingLog.write(toFile: logFile, atomically: true, encoding: .utf8)
    } catch {
        print("Failed to write log:: \(error.localizedDescription)")
    }
}
