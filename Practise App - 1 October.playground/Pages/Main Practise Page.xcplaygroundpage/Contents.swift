import Cocoa

// MARK: Are Letters Unique
private func areLettersUniqueUsingLoops(inputStr: String) -> Bool {
    var usedCharacters = [Character]()
    
    for char in inputStr {
        if usedCharacters.contains(char) {
            return false
        }
    }
    
    return true
}

areLettersUniqueUsingLoops(inputStr: "AaBbCc")

private func areLettersUnique(inputStr: String) -> Bool {
    return inputStr.count == Set(inputStr).count
}

areLettersUnique(inputStr: "abcdefghijklmnopqrstuvwxyz")


// MARK: Is String Palindrome
private func isStringPalindromeUsingReversed(inputStr: String) -> Bool {
    return Array(inputStr.lowercased()) == inputStr.lowercased().reversed()
}

isStringPalindromeUsingReversed(inputStr: "nitiN")

private func isStringPalindromeUsingWhileLoops(inputStr: String) -> Bool {
    var inputStrArray = Array(inputStr.lowercased())
    var initalIndex = 0
    var finalIndex = inputStr.count - 1
    
    while initalIndex < finalIndex {
        if inputStrArray[initalIndex] != inputStrArray[finalIndex] {
            return false
        }
        
        initalIndex += 1
        finalIndex -= 1
    }
    
    return true
}

isStringPalindromeUsingWhileLoops(inputStr: "Mommy")

// MARK: Do Strings Contains Same Characters
private func doStringsContainsSameCharactersUsingLoop(inputStr1: String, inputStr2: String) -> Bool {
    guard Set(inputStr1).count == Set(inputStr2).count else { return false }
    
    var inputStrArray2 = Array(inputStr2)
    
    for char in inputStr1 {
        if !inputStrArray2.contains(char) {
            return false
        }
    }
    
    return true
}

doStringsContainsSameCharactersUsingLoop(inputStr1: "abca", inputStr2: "abca")
doStringsContainsSameCharactersUsingLoop(inputStr1: "abc", inputStr2: "cba")
doStringsContainsSameCharactersUsingLoop(inputStr1: "a1 b2", inputStr2: "b1 a2")
doStringsContainsSameCharactersUsingLoop(inputStr1: "abc", inputStr2: "Abc")
doStringsContainsSameCharactersUsingLoop(inputStr1: "abc", inputStr2: "aaa")

private func doStringsContainsSameCharactersUsingSorted(inputStr1: String, inputStr2: String) -> Bool {
    guard Set(inputStr1).count == Set(inputStr2).count else { return false }
    return inputStr1.sorted() == inputStr2.sorted()
}

doStringsContainsSameCharactersUsingSorted(inputStr1: "abca", inputStr2: "abca")
doStringsContainsSameCharactersUsingSorted(inputStr1: "a1 b2", inputStr2: "b1 a2")
doStringsContainsSameCharactersUsingSorted(inputStr1: "abc", inputStr2: "Abc")
doStringsContainsSameCharactersUsingSorted(inputStr1: "abc", inputStr2: "aaa")


private func doStringsContainsSameCharactersUsingWithoutContains(inputStr1: String, inputStr2: String) -> Bool {
    var checkString = inputStr2
    
    for char in inputStr1 {
        if let index = checkString.firstIndex(of: char) {
            checkString.remove(at: index)
        } else {
            return false
        }
    }
    
    return checkString.count == 0
}

doStringsContainsSameCharactersUsingLoop(inputStr1: "abca", inputStr2: "abca")
doStringsContainsSameCharactersUsingLoop(inputStr1: "abc", inputStr2: "cba")
doStringsContainsSameCharactersUsingLoop(inputStr1: "a1 b2", inputStr2: "b1 a2")
doStringsContainsSameCharactersUsingLoop(inputStr1: "abc", inputStr2: "Abc")
doStringsContainsSameCharactersUsingLoop(inputStr1: "abc", inputStr2: "aaa")

// MARK: Custom Contains Method
extension String {
    func customContains(inputStr: String) -> Bool {
        return self.lowercased().range(of: inputStr.lowercased()) != nil
    }
}

"Hello, world".customContains(inputStr: "WORLDO")

// MARK: Count the Characters
private func countTheCharacters(inputStr: String, inputChar: Character) -> Int {
    var totalCount = 0
    
    for char in inputStr {
        if char == inputChar {
            totalCount += 1
        }
    }
    
    return totalCount
}

countTheCharacters(inputStr: "Hacking with Swift", inputChar: "i")

private func countTheCharactersUsingReplacingOccurences(inputStr: String, inputChar: String) -> Int {
    var modifiedInputStr = inputStr.replacingOccurrences(of: inputChar, with: "")
    return inputStr.count - modifiedInputStr.count
}

countTheCharactersUsingReplacingOccurences(inputStr: "Hacking with Swift", inputChar: "i")


// MARK: Replace Duplicates In String
private func replaceDuplicatesInString(inputStr: String) -> String {
    var charactersArray = [Character]()
    
    for char in inputStr {
        if !charactersArray.contains(char) {
            charactersArray.append(char)
        }
    }
    
    return String(charactersArray)
}

replaceDuplicatesInString(inputStr: "Mississippi")
replaceDuplicatesInString(inputStr: "Hello")

private func replaceDuplicatesInStringUsingDictionary(inputStr: String) -> String {
    var characterDictionary = [Character : Bool]()
    
    let result = inputStr.filter {
        characterDictionary.updateValue(true, forKey: $0) == nil
    }
    
    return String(result)
}

replaceDuplicatesInStringUsingDictionary(inputStr: "Mississippi")
replaceDuplicatesInStringUsingDictionary(inputStr: "Hello")

// MARK: Reverse Array
private func reverseArray(inputArray: [Any]) -> [Any] {
    var reverseInputArray = [Any]()
    let initalIndex = 0
    let finalIndex = inputArray.count - 1
    
    for index in stride(from: finalIndex, through: initalIndex, by: -1) {
        reverseInputArray.append(inputArray[index])
    }
    
    return reverseInputArray
}

reverseArray(inputArray: ["Name", "Age", 56, 71, "Gender", 9])

// MARK: Reverse String
private func reverseString(inputStr: String) -> String {
    var inputStrArray = Array(inputStr)
    var reverseArray = [Character]()
    let intialIndex = 0
    let finalIndex = inputStr.count - 1
    
    for index in stride(from: finalIndex, through: intialIndex, by: -1) {
        reverseArray.append(inputStrArray[index])
    }
    
    return String(reverseArray)
}

reverseString(inputStr: "Hola King")
reverseString(inputStr: "Swift coding Challenges")
reverseString(inputStr: "The quick brown fox")


private func reverseWordsInString(inputStr: String) -> String {
    var separatedInputStrArray = inputStr.components(separatedBy: " ")
    var reverseWordArray = [String]()
    
    for str in separatedInputStrArray {
        reverseWordArray.append(reverseString(inputStr: str))
    }
    
    return reverseWordArray.joined(separator: " ")
}

reverseWordsInString(inputStr: "Swift coding Challenges")
reverseWordsInString(inputStr: "The quick brown fox")


// MARK: Condense Whitespace
private func condenseWhitespaceUsingReplacingOccurrences(inputStr: String) -> String {
    return inputStr.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}

condenseWhitespaceUsingReplacingOccurrences(inputStr: "a  b c   d")

private func condenseWhitespaceUsingLoop(inputStr: String) -> String {
    var seenSpace = false
    var returnValue = ""
    
    for char in inputStr {
        if char == " " {
            if seenSpace { continue }
            seenSpace = true
        } else {
            seenSpace = false
        }
        
        returnValue.append(char)
    }
    
    return returnValue
}

condenseWhitespaceUsingLoop(inputStr: "     a")
condenseWhitespaceUsingLoop(inputStr: "a  b c   d")


// MARK: String is rotated
private func isStringRotated(inputStr: String, rotatedValue: String) -> Bool {
    var allCombinationString = inputStr + inputStr
    return allCombinationString.contains(rotatedValue)
}

isStringRotated(inputStr: "abcde", rotatedValue: "abced")

// MARK: Find pangrams
private func isPangram(inputStr: String) -> Bool {
    var modifiedString = Set(inputStr.lowercased())
    return modifiedString.filter { $0 >= "a" && $0 <= "z" }.count == 26
}

isPangram(inputStr: "The quick brown fox jumps over the lazy dog")
isPangram(inputStr: "The quick brown fox jumped over the lazy dog")

// MARK: Vowels and Consonents
private func numberOfVowelsAndConsonents(inputStr: String) -> (vowelsCount: Int,consonentsCount: Int) {
    let vowels = "aeiuo"
    let consonents = "bcdfghjklmnpqrstvwxyz"
    var vowelsCount = 0
    var consonentsCount = 0
    
    for char in inputStr.lowercased() {
        if vowels.contains(char) {
            vowelsCount += 1
        } else if consonents.contains(char) {
            consonentsCount += 1
        }
    }
    
    return(vowelsCount,consonentsCount)
}

numberOfVowelsAndConsonents(inputStr: "Swift Coding Challenges")
numberOfVowelsAndConsonents(inputStr: "Mississippi")

// MARK: Three Different Letters
private func threeDifferentLetters(inputStr1: String, inputStr2: String) -> Bool {
    var totalDifference = 0
    var inputStrArray2 = Array(inputStr2)
    
    for (index,char) in inputStr1.enumerated() {
        if inputStrArray2[index] != char {
            totalDifference += 1
        }
        
        if totalDifference == 4 {
            return false
        }
    }
    
    return true
}

threeDifferentLetters(inputStr1: "Clamp", inputStr2: "Grans")
threeDifferentLetters(inputStr1: "Clamp", inputStr2: "Grams")
threeDifferentLetters(inputStr1: "clamp", inputStr2: "terry")



// MARK: Find the longest Prefix
private func longestPrefix(inputStr: String) -> String {
    var separtedInputStrArray = inputStr.components(separatedBy: " ")
    guard let first = separtedInputStrArray.first else { return "" }
    var currentPrefix = ""
    var longestPrefix = ""
    
    for char in first {
        currentPrefix.append(char)
        
        for str in separtedInputStrArray {
            if !str.hasPrefix(currentPrefix) {
                return longestPrefix
            }
        }
        
        longestPrefix = currentPrefix
    }
    
    return longestPrefix
}


longestPrefix(inputStr: "swift swim swill")

// MARK: Run length Encoding
private func runLengthEncoding(inputStr: String) -> String {
    var currentChar: Character?
    var returnValue = ""
    var charCount = 0
    
    for char in inputStr {
        if char == currentChar {
            charCount += 1
        } else {
            if let current = currentChar {
                returnValue.append("\(current)\(charCount)")
            }
            
            currentChar = char
            charCount = 1
        }
    }
    
    if let current = currentChar {
        returnValue.append("\(current)\(charCount)")
    }
    
    return returnValue
}

runLengthEncoding(inputStr: "aaabbccccc")

// MARK: String Permutation
private func allStringPermutations(inputStr: String, currentString: String = "") {
    let inputStrArray = Array(inputStr)
    let length = inputStr.count
    
    if length == 0 {
        print(currentString)
        print("************")
    } else {
        print(currentString)
        
        for i in 0..<length {
            let left = String(inputStrArray[0..<i])
            let right = String(inputStrArray[i+1..<length])
            allStringPermutations(inputStr: left + right, currentString: currentString + String(inputStrArray[i]))
        }
    }
}

allStringPermutations(inputStr: "ab")


// MARK: FizzBuzz
private func fizzBuzz() {
    for index in 1...100 {
        if (index % 3 == 0) && (index % 5 == 0) {
            print("FizzBuzz")
        } else if index % 5 == 0 {
            print("Buzz")
        } else if index % 3 == 0 {
            print("Fizz")
        } else {
            print(index)
        }
    }
}
print("\n\n\n\n\n")
//fizzBuzz()


// MARK: FizzBuzz
private func fizzBuzzUsingRecursion(index: Int = 1) {
    var tempIndex = index
    
    if index <= 100 {
        if (index % 3 == 0) && (index % 5 == 0) {
            print("FizzBuzz")
        } else if index % 5 == 0 {
            print("Buzz")
        } else if index % 3 == 0 {
            print("Fizz")
        } else {
            print(index)
        }
        
        tempIndex += 1
        fizzBuzzUsingRecursion(index: tempIndex)
    }
}

print("\n\n\n\n\n")
//fizzBuzzUsingRecursion()

// MARK: Random Number in a range
private func randomNumberGenerator(lowerLimit: Int, upperLimit: Int) -> Int {
    return Int.random(in: lowerLimit...upperLimit)
}

randomNumberGenerator(lowerLimit: 1, upperLimit: 5)

// MARK: Recreate Pow Func
private func customPow(number: Int, power: Int) -> Int {
    guard number > 0, power > 0 else { return 0 }
    if power == 1 { return number }
    return number * customPow(number: number, power: power - 1)
}

customPow(number: 4, power: 4)

// MARK: Number is Prime
private func isNumberPrime(inputInt: Int) -> Bool {
    guard inputInt >= 2 else { return false }
    guard inputInt != 2 else { return true }
    
    let max = Int(ceil(sqrt(Double(inputInt))))
    
    for i in 2...max {
        if inputInt % i == 0 {
            return false
        }
    }
    
    return true
}

isNumberPrime(inputInt: 2)

// MARK: Counting binary ones
private func countBinaryOnes(number: Int) -> (nextHighestInt: Int?, nextLowestInt: Int?) {
    func ones(in number: Int) -> Int {
        let currentBinary = String(number, radix: 2)
        return currentBinary.filter { (char: Character) -> Bool in
            char == "1"
        }.count
    }
    
    let targestOnes = ones(in: number)
    var nextHigest: Int? = nil
    var nextLowest: Int? = nil
    
    // Next highest
    for num in number + 1...Int.max {
        if ones(in: num) == targestOnes {
            nextHigest = num
            break
        }
    }
    
    // Lowest
    for num in (0..<number).reversed() {
        if ones(in: num) == targestOnes {
            nextLowest = num
            break
        }
    }
    
    return (nextHigest, nextLowest)
}

countBinaryOnes(number: 12)
countBinaryOnes(number: 28)


// MARK: Binary reverse
private func binaryReverse(number: UInt) ->  UInt {
    let binary = String(number, radix: 2)
    let paddedAmount = 8 - binary.count
    let paddedBinary = String(repeating: "0", count: paddedAmount) + binary
    let reversedBinary = String(paddedBinary.reversed())
    return UInt(reversedBinary, radix : 2) ?? 0
}

binaryReverse(number: 5)

// MARK: Integer disguised as string
private func integerDisguisedAsString(inputStr: String) -> Bool {
    for char in inputStr {
        if Int(String(char)) == nil {
            return false
        }
    }
    
    return true
    //    return UInt(inputStr) != nil
}

integerDisguisedAsString(inputStr: "9223372036854775808")


private func integerDisguisedAsStringUsingCharacterSet(inputStr: String) -> Bool {
    return inputStr.rangeOfCharacter(from: CharacterSet(charactersIn: "0123456789").inverted) == nil
}

integerDisguisedAsStringUsingCharacterSet(inputStr: "9223372036854775808")


// MARK: Adding number in string
private func addingNumberInString(inputStr: String) -> Int {
    var currentNumber = ""
    var totalSum = 0
    
    for char in inputStr {
        let str = String(char)
        
        if Int(str) != nil {
            currentNumber += str
        } else {
            totalSum += Int(currentNumber) ?? 0
            currentNumber = ""
        }
    }
    
    totalSum += Int(currentNumber) ?? 0
    return totalSum
}

addingNumberInString(inputStr: "a45b12c6")

// MARK: Adding number in string using regex
private func addingNumberInStringUsingRegex(inputStr: String) -> Int {
    let regex = try! NSRegularExpression(pattern: "(\\d+)", options: [])
    let matches = regex.matches(in: inputStr, options: [], range: NSRange(location: 0, length: inputStr.utf16.count))
    let allNumbers = matches.flatMap { Int((inputStr as NSString).substring(with: $0.range)) }
    return allNumbers.reduce(0, +)
}

addingNumberInStringUsingRegex(inputStr: "a45b12c6")

// MARK: Sqrt by hand
private func srqtByHandUsingPow(inputInt: Int) -> Int {
    return Int(floor(pow(Double(inputInt), 0.5)))
}

private func srqtByHand(inputInt: Int) -> Int {
    guard inputInt != 1 else { return 1}
    var lowerbound = 0
    var upperbound = 1 + inputInt / 2
    
    while lowerbound + 1 < upperbound {
        let middle = lowerbound + (lowerbound - upperbound) / 2
        let middleSquared = middle * middle
        
        if middleSquared == inputInt {
            return middle
        } else if middleSquared < inputInt {
            lowerbound = middle
        } else if middleSquared > inputInt {
            upperbound = middle
        }
    }
    
    return lowerbound
}

// MARK: Subtract without subtract
private func subToSub(inputInt1: Int, inputInt2: Int) -> Int {
    return inputInt1 + (inputInt2 * -1)
}

subToSub(inputInt1: 10, inputInt2: 4)


// MARK: Count the of specific number in string
extension Collection where Iterator.Element == Int {
    func countTheSpecificNumber(inputChar: Character) -> Int {
        var totalCount = 0
        
        for item in self {
            let str = String(item)
            
            for char in str {
                if char == inputChar {
                    totalCount += 1
                }
            }
        }
        
        return totalCount
    }
}

[5, 15, 55, 515].countTheSpecificNumber(inputChar: "5")

// MARK: find the N smallest number

