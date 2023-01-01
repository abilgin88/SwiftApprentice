import UIKit


//: Introducing nil
var name = "Abdullah Bilgin"
var age = 34
var occupation = "Mobile Developer"
//:Sentinel values
var errorCode = 0
//:Introducing optionals
var errorCode1: Int?
//:Mini-exercises
errorCode1 = 100
errorCode1 = nil

var myFavoriteSong: String? = "Hello - Adele"
myFavoriteSong = nil

let parsedInt = Int("10") // it is optional because of to convert int can have some values as string "Abdullah" which cannot convert to integer

let parsedInt2 = Int("Dog")
//: Unwrapping optionals
var result: Int? = 30
print(result)
//print(result + 1)
//: Force unwrapping
var authorName: String? = "Abdullah Bilgin"
var authorAge: Int? = 30

var unwrappedAuthorName = authorName!
print("Author is \(unwrappedAuthorName)")

authorName = nil
//print("Author is \(authorName!)")

if authorName != nil {
    print("Author is \(authorName!)")
} else {
    print("No author")
}

//:Optional binding
if let unwrappedAuthorName = authorName {
    print("Author is \(unwrappedAuthorName)")
} else {
    print("No author.")
}

if let authorName = authorName {
    print("Author is \(authorName)")
} else {
    print("No author.")
}

authorName = "Abdullah"

if let authorName = authorName,
   let authorAge = authorAge {
    print("The author is \(authorName) who is \(authorAge) years old.")
} else {
    print("No author or no age")
}

if let authorAge = authorAge,
   let authorName = authorName,
   authorAge >= 30 {
    print("The author is \(authorName) who is \(authorAge) years old.")
} else {
    print("No author or no age")
}

//: Mini-exercises
if let myFavoriteSong = myFavoriteSong {
    print(myFavoriteSong)
} else {
    print("I don't have a favorite song")
}

myFavoriteSong = "Hello - Adele"
print(myFavoriteSong)

if let myFavoriteSong = myFavoriteSong {
    print(myFavoriteSong)
} else {
    print("I don't have a favorite song")
}
//:Introducing guard
func guardMyCastle(name: String?) {
    guard let castleName = name else {
        print("No castle!")
        return
    }
    print("Your castle called \(castleName) was guarded!")
}
guardMyCastle(name: "Test")
guardMyCastle(name: nil)
//:
func calculateNumberOfSides(shape: String) -> Int? {
    switch shape {
    case "Triangle":
        return 3
    case "Square":
        return 4
    case "Rectangle":
        return 4
    case "Pentagon":
        return 5
    case "Hexagon":
        return 6
    default:
        return nil
    }
}

func maybePrintSides(shape: String) {
    let sides = calculateNumberOfSides(shape: shape)
    
    if let sides = sides {
        print("A \(shape) has \(sides) sides.")
    } else {
        print("I don't know the number of sides for \(shape).")
    }
}
maybePrintSides(shape: "Triangle")
maybePrintSides(shape: "line")
//:
func maybePrintSidesGuard(shape: String) {
    guard let sides = calculateNumberOfSides(shape: shape) else {
        print("I don't know the number of sides for \(shape).")
        return
    }
    print("A \(shape) has \(sides) sides.")
}
maybePrintSides(shape: "Triangle")
maybePrintSides(shape: "line")
//:Nil coalescing
var optionalInt: Int? = 10
print(optionalInt)
var mustHaveResult = optionalInt ?? 0
print(mustHaveResult)

var optionalInt1: Int? = 10
var mustHaveResult1: Int
if let unwrapped = optionalInt {
    mustHaveResult = unwrapped
} else {
    mustHaveResult = 0
}
print(mustHaveResult)

optionalInt = nil
mustHaveResult = optionalInt ?? 0
//: Challenges
//:Challenge 1: You be the compiler
var name1: String? = "Ray"
// var age1: Int = nil
var age1: Int? = nil
var distance: Float = 26.7
var middleName: String? = nil
//:Challenge 2: Divide and conquer
func divideIfWhole(_ value: Int, by divisor: Int) {
    guard value % divisor == 0 else {
        print("Not divisible :[")
        return
    }
    print("Yep, it divides \(value / divisor) times")
}

divideIfWhole(10, by: 2)
divideIfWhole(10, by: 3)

// second:
func divideIfWhole1(_ value: Int, by divisor: Int) {
    value % divisor == 0 ? print("Yep, it divides \(value / divisor) times") : print("Not divisible :[")
}
divideIfWhole1(10, by: 2)
divideIfWhole1(10, by: 3)

// Book solution:

func divideIfWholeBook(_ value: Int, by divisor: Int) -> Int? {
    if value % divisor == 0 {
        return value / divisor
    } else {
        return nil
    }
}

if let answer = divideIfWholeBook(10, by: 2) {
    print("Yep, it divides \(answer) times")
} else {
    print("Not divisible :[")
}

if let answer = divideIfWholeBook(10, by: 3) {
    print("Yep, it divides \(answer) times")
} else {
    print("Not divisible :[")
}

//:Challenge 3: Refactor and reduce

let answer1 = divideIfWholeBook(10, by: 2) ?? 0
print("It divides \(answer1) times.")
let answer2 = divideIfWholeBook(10, by: 3)
print("It divides \(answer2) times.")

//: Challenge 4: Nested optionals
let number: Int??? = 10
print(number)
print(number!)
print(number!!!)

if let number = number {
    if let number = number {
        if let number = number {
            print(number)
        }
    }
}

func printNumber(_ number: Int???) {
    guard let number = number else {
        return
    }
    guard let number = number else {
        return
    }
    guard let number = number else {
        return
    }
    print(number)
}
printNumber(number)

// Book Solution

// Better way of optionally binding without all the {}
if let n1 = number,
   let n2 = n1,
   let n3 = n2 {
    print(n3)
}

//

func printNumberBook(_ number: Int???) {
    guard let n1 = number, let n2 = n1, let n3 = n2 else {
        return
    }
    print(n3)
}
printNumberBook(number)
