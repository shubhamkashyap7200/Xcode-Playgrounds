//: [Previous](@previous)

import Foundation

// Using Loops
private func fizzBuzzQuestion() {
    for num in 1...100 {
        if (num % 3 == 0) && (num % 5 == 0) {
            print("FizzBuzz")
        } else if num % 3 == 0 {
            print("Fizz")
        } else if num % 5 == 0 {
            print("Buzz")
        } else {
            print(num)
        }
    }
}

//fizzBuzzQuestion()


// Using Recursion
private func fizzBuzzQuestionUsingRecursion(number: Int = 1) {
    var num = number
    
    if num <= 100 {
        if (num % 3 == 0) && (num % 5 == 0) {
            print("FizzBuzz")
        } else if num % 3 == 0 {
            print("Fizz")
        } else if num % 5 == 0 {
            print("Buzz")
        } else {
            print(num)
        }
        
        num += 1
        fizzBuzzQuestionUsingRecursion(number: num)
    }
}

fizzBuzzQuestionUsingRecursion()

