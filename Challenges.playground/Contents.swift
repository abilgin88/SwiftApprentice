import UIKit
import Foundation

// Challenge 1: Variables

let myAge = 34
var dogs:Int = 1
dogs += 1

// Challenge 2: Make it compile
 
var age:Int = 16
print(age)
age = 30
print(age)

// Challenge 3: Compute the answer

let x: Int = 46
let y: Int = 10

let answer1: Int = (x * 100) + y
let answer2: Int = (x * 100) + (y * 100)
let answer3: Int = (x * 100) + (y / 10)

//Challenge 4: Add parentheses

8 - (4 * 2) + ((6 / 3) * 4)

//Challenge 5: Average rating

let rating1: Double = 10
let rating2: Double = 20
let rating3: Double = 30

let averageRating = ( rating1 + rating2 + rating3) / 3

//Challenge 6: Electrical power

let voltage: Double = 120
let current: Double = 2
let power: Double = voltage * current

// Challenge 8: Random integer
print(power)
let randomNumber = arc4random()
print(randomNumber)

let diceRoll = randomNumber % 3
print(diceRoll)

//Challenge 9: Quadratic equations

let a: Double = 2
let b: Double = 7
let c: Double = 4

let root1: Double = ((-1 * b) + sqrt((b * b) - 4 * a * c)) / (2 * a)
let root2: Double = ((-1 * b) - sqrt((b * b) - 4 * a * c)) / (2 * a)

