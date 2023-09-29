
import Foundation


private func reverseBinary(inputInt: UInt) -> UInt {
    let binary = String(inputInt, radix: 2)
    let paddingAmount = 8 - binary.count
    let paddedBinary = String(repeating: "0", count: paddingAmount) + binary
    let reversedBinary = String(paddedBinary.reversed())
    return UInt(reversedBinary, radix: 2)!
}

reverseBinary(inputInt: 41)
