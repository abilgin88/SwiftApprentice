import UIKit



func multiplyAndDivide(_ number: Int, by factor: Int)
                   -> (product: Int, quotient: Int) {
  return (number * factor, number / factor)
}
let results = multiplyAndDivide(4, by: 2)
print(results)
let product = results.product
let quotient = results.quotient

func multiplyAndDivide2(_ number: Int, by factor: Int)
                   -> (Int,Int) {
  return (number * factor, number / factor)
}

print(multiplyAndDivide2(4, by: 2))


func toplaCarp(_ x: Int, _ y: Int) -> (Int, Int) {
    (x + y, x * y)
}
print(toplaCarp(3, 4))

func sumMult(_ x: Int, y: Int) -> (String, Int, String, Int) {
    ("Sum:", x + y, "Mult:", x * y)
}
print(sumMult(3, y: 4))

let res = sumMult(3, y: 4)
res.0
res.1
res.self

func sumMult2(_ x: Int, _ y:Int) -> (Sum: Int, Mult: Int) {
    (x + y, x * y)
}
let res2 = sumMult2(3, 9)
print(res2)
print(res2.Sum)

//

func calculator(FirstNumber num1: Double, SecondNumber num2:Double) -> (Sum: Double, Sub: Double, Mul: Double, Div: Double) {
    (num1 + num2, num1 - num2, num1 * num2, num1 / num2)
}

let cal7and9 = calculator(FirstNumber: 23, SecondNumber: 43)
cal7and9.Sum
cal7and9.Sub
cal7and9.Mul
cal7and9.Div


//func incrementAndPrint(_ value: Int) {
//    value += 1
//    print(value)

//}

func incrementAndPrint(_ value: inout Int) {
    value += 1
    print(value)
}
var value = 5
incrementAndPrint(&value)


func printMultipleOf(multiplier: Int, andValue: Int) {}
func printMultipleOf(multiplier: Int, and value: Int){}
func printMultipleOf(_ multiplier: Int, and value: Int){}
func printMultipleOf(_ multiplier: Int, _ value: Int){}

func getValue() -> Int {
31
}

func getValue() -> String {
  "Matt Galloway"
    
}

var x: String = getValue()
var y: Int = getValue()


func printFullName(_ firstName: String, _ lastName: String) -> String{
    firstName + " " + lastName
}
printFullName("Abdullah", "Bilgin")

func calculateFullName(firstName: String, lastName: String) -> String {
    let  fullName = firstName + lastName
    return fullName
}

calculateFullName(firstName: "Abdullah", lastName: "Bilgin")

func calculateFullName1(firstName: String, lastName: String) -> (String, Int) {
    let  fullName = firstName + lastName
    return (fullName, fullName.count)
}

calculateFullName1(firstName: "Abdullah", lastName: "Bilgin")

func add(_ a: Int, _ b: Int) -> Int {
    a + b
}

var function = add
function(4, 2)

func subtract(_ a: Int, _ b: Int) -> Int {
    a - b
}

function = subtract
function(4,2)

func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    let result = function(a, b)
    print(result)
}

printResult(add, 4, 2)
printResult(subtract, 4, 2)

//func noReturn() -> Never {
//
//}


/// Calculate the average of three value
/// - Parameters:
///   - a: The first value.
///   - b: The Second value.
///   - c: The third values.
/// - Returns: The average of three values.
func calculateAverage(of a: Double, and b: Double, and c: Double) -> Double {
    let total = a + b + c
    let average = total / 3
    return average
}

calculateAverage(of: 4, and: 7, and: 34)


// Challenge 1: Looping with stride functions

for index in stride(from: 10, to: 20, by: 4) {
    print(index)
}

for index in stride(from: 10, through: 22, by: 4) {
    print(index)
}
// the differences between stride function overload is "to" and "through" parameters. With "to" parameters it does not include the upper bound like half-open range operator
// but with "through" parameters it includes lower bound like close range operator.

// Challenge 2: It’s prime time

///  Determined if one number is divisible by another
/// - Parameters:
///   - number: the number to check is divisible
///   - divisor: the divisor value
/// - Returns: if number is divisible true otherwise false
func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
    number % divisor == 0
}


func isPrime(_ number: Int) -> Bool {
    if number < 0 {
        return false
    }
    
    if number <= 3 {
        return true
    }
    
    for i in 2..<number {
        //print("\(number) - \(i)")
        if isNumberDivisible(number, by: i) {
            return false
        }
    }
    
    return true
}
isPrime(-2)
isPrime(0)
isPrime(1)
isPrime(2)
isPrime(6)
isPrime(9)
isPrime(25)
isPrime(13)
isPrime(8893)


// Challenge 3: Recursive functions

func fibonacci(_ number: Int) -> Int {
    if number <= 0 {
      return 0
    }
    
    if number == 1 || number == 2 {
        return 1
    }
    return fibonacci(number - 1) + fibonacci(number - 2)
}

fibonacci(1) // = 1
fibonacci(2)  // = 1
fibonacci(3)  // = 2
fibonacci(4)  // = 3
fibonacci(5)// = 5
fibonacci(6)
fibonacci(7)
fibonacci(8)
fibonacci(10) // = 55


