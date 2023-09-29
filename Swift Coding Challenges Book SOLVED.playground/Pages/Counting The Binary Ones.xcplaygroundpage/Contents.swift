//: [Previous](@previous)

import Foundation

private func countTheBinaryOnes(inputInt: Int) -> (nextHightest: Int?, nextLowest: Int?) {
    let targetBinary = String(inputInt, radix: 2)
    
    let targetOnes = targetBinary.filter {
        (char: Character) -> Bool in
        char == "1"
    }.count
    
    var nextHighest: Int? = nil
    var nextLowest: Int? = nil
    
    for i in inputInt + 1...Int.max {
        let currentBinary = String(i, radix: 2)
        let currentOnes = currentBinary.filter { (char: Character) -> Bool in char == "1" }.count
        
        if targetOnes == currentOnes {
            nextHighest = i
            break
        }
    }
    
    for i in (0..<inputInt).reversed() {
        let currentBinary = String(i, radix: 2)
        let currentOnes = currentBinary.filter { (char: Character) -> Bool in char == "1" }.count

        if targetOnes == currentOnes {
            nextLowest = i
            break
        }

    }
    
    
    return (nextHighest,nextLowest)
}

countTheBinaryOnes(inputInt: 28)


//
//for i in (0..<10).reversed() {
//    print(i)
//}
