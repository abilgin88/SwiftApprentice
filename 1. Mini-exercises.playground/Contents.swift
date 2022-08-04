import UIKit

// 1. Declare a constant of type Int called myAge and set it to your age.

let myAge: Int = 34

// Declare a variable of type Double called averageAge. Initially, set it to your own age.Then, set it to the average of your age and my own age of 3

var averageAge: Double = 33.0
let hisAge: Double = 30

averageAge = (Double(myAge) + hisAge) / 2
print("Average Age is: \(averageAge)")


// Create a constant called testNumber and initialize it with whatever integer you’d like. Next, create another constant called evenOdd and set it equal to testNumber modulo 2. Now change testNumber to various numbers. What do you notice about evenOdd?

let testNumber: Int = 3

let evenOdd = testNumber % 2

print(evenOdd)

// Create a variable called answer and initialize it with the value 0. Increment it by 1. Add 10 to it. Multiply it by 10. Then, shift it to the right by 3. After all of these operations, what’s the answer?

var answer = 0
answer += 1
answer += 10
answer *= 10
answer >> 3
print(answer)
