//: [Previous](@previous)

import Foundation

class ChunkedFileReader {
    var fileHandle: FileHandle?
    
    // we keep adding buffer until we find a line break or hit end of the file
    var buffer: Data
    
    // this should be between 1024 and 8192 for production; it determines how much of fileis read in each step
    let chunkSize: Int = 4
    
    // this determines what we consider to be end of line
    let delimiter = "\n".data(using: .utf8)!
    
    init(path: String) {
        // open the file handle and prepare the buffer
        fileHandle = FileHandle(forReadingAtPath: path)
        buffer = Data(capacity: chunkSize)
    }
    
    func readLines() -> String? {
        // find the delimiter in our buffer
        var rangeOfDelimiter = buffer.range(of: delimiter)
        
        // loop until we find a delimiter
        while rangeOfDelimiter == nil {
            // try to read a chunk from the file handle, or bail out if it didn't work
            guard let chunk = fileHandle?.readData(ofLength: chunkSize) else { return nil }
            
            
            if chunk.count == 0 {
                // the chunk was read successfully, but was empty – we reached the end of the file
                
                
                if buffer.count > 0 {
                    // the buffer has something left in it; send it back, and make sure to clear the buffer's remnants when it's finished
                    defer { buffer.count = 0 }
                    return String(data: buffer, encoding: .utf8)
                }
                
                // we reached the end of the file and the buffer was empty; send back nil
                return nil
            } else {
                // we read some data; append it to buffer
                buffer.append(chunk)
                
                // now re-scan for the delimiter
                rangeOfDelimiter = buffer.range(of: delimiter)
            }
        }
        
        // we can only make it here if we found a delimiter, but it might be anywhere inside our buffer; we want to pull out everything in our buffer from the start up to where the delimiter lies
        let rangeOfLine = Range(0 ..< rangeOfDelimiter!.upperBound)
        
        // convert that range of our buffer into a string
        let line = String(data: buffer.subdata(in: rangeOfLine), encoding: .utf8)
        
        // remove it from the buffer
        buffer.removeSubrange(rangeOfLine)
        
        // send the lines back, removing the trailing lines break at the end
        line?.trimmingCharacters(in: .whitespacesAndNewlines)
        
    }
}

private func printErrorLines(fileName: String) -> Int {
    var totalErrors = 0
    let reader = ChunkedFileReader(path: fileName)
    
    while let line = reader.readLines() {
        if line.hasPrefix("[Error]") {
            totalErrors += 1
        }
    }
    
    return totalErrors
}
