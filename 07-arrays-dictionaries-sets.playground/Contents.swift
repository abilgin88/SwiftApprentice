import UIKit

//: Arrays
//:Creating arrays
let evenNumbers = [2, 4, 6, 8]
var subscribes: [String] = []
let allZeros = Array(repeating: 0, count: 5)
let vowels = ["A", "E", "I", "O", "U"]
//:Accessing elements
//:Using properties and methods
var players = ["Alice", "Bob", "Cindy", "Dan"]
print(players.isEmpty)

if players.count < 2 {
    print("We need at least two player")
} else {
    print("Let's start!")
}

var currentPlayer = players.first
// print(currentPlayer)
print(currentPlayer as Any)
print(players.last as Any)

currentPlayer = players.min()
print(currentPlayer as Any)

print([2, 3, 1].first as Any)
print([2, 3, 1].min() as Any)

if let currentPlayer = currentPlayer {
    print("\(currentPlayer) will start")
}
//:Using subscripting
var firstPlayer = players[0]
print("First player is \(firstPlayer)")

//var player = players[4]

//:Using countable ranges to make an ArraySlice
let upcomingPlayersSlice = players[1...2]
print(upcomingPlayersSlice[1], upcomingPlayersSlice[2])
//print(upcomingPlayersSlice[0])

//make a brand-new, zero-indexed Array
let upcomingPlayersArray = Array(players[1...2])
print(upcomingPlayersArray[0], upcomingPlayersArray[1])
//:Checking for an element
func isEliminated(player: String) -> Bool {
    !players.contains(player)
}
print(isEliminated(player: "Bob"))

players[1...3]
players[1...3].contains("Bob")
//:Modifying arrays
//:Appending elements
players.append("Eli")
players += ["Gina"]
print(players)
//:Inserting elements
players[5]
players.insert("Frank", at: 5)
//:Removing elements
var removedPlayer = players.removeLast()
print("\(removedPlayer) was removed")

removedPlayer = players.remove(at: 2)
print("\(removedPlayer) was removed")
//:Mini-exercise
players.firstIndex(of: "Alice")
players.firstIndex(of: "Dan")
//:Updating elements
print(players)
players[4] = "Franklin"

players[0...1] = ["Donna", "Craig", "Brain", "Anna"]
print(players)
//:Moving elements
let playerAnna = players.remove(at: 3)
players.insert(playerAnna, at: 0)
print(players)

players.swapAt(1, 3)
print(players)

players.sort()
players.sorted() // untouched original
//:Iterating through an array
let score = [2, 2, 8, 6, 1, 2, 1]
for player in players {
    print(player)
}

for (index, player) in players.enumerated() {
    print("\(index + 1). \(player)")
}

func sumOfElements(in array: [Int]) -> Int {
    var sum = 0
    for number in array {
        sum += number
    }
    return sum
}
print(sumOfElements(in: score))

//:Mini-exercise

print(score)
print(players)


func playerScore(player: [String], score: [Int]) {
    for i in 0..<score.count {
        print(" \(player[i]) : \(score[i])")
    }
}

playerScore(player: players, score: score)
//:Dictionaries
//:Creating dictionaries
var namesAndScores = ["Anna": 2, "Brain": 2, "Craig": 8, "Donna": 6]
print(namesAndScores)
namesAndScores = [:]
var pairs: [String: Int] = [:]
pairs.reserveCapacity(20)
//:Accessing values
//:Using subscripting
namesAndScores = ["Anna": 2, "Brian": 2, "Craig": 8, "Donna": 6]
print(namesAndScores["Anna"]!)
namesAndScores["Greg"]
//:Using properties and methods
namesAndScores.isEmpty
namesAndScores.count
//:Modifying dictionaries
//:Adding pairs
var bobData = [
    "name": "Bob",
    "profession": "Card Player",
    "country": "USA"
]

bobData.updateValue("CA", forKey: "state")
print(bobData)
bobData["city"] = "San Francisco"
print(bobData)
//: Mini-exercise
func cityState(for player: [String: String]) -> (city: String, state: String) {
    (player["city"]!, player["state"]!)
}
cityState(for: bobData)
//: book solution
func printLocation(ofPlayer player: [String: String]) {
    if let state = player["state"], let city = player["city"] {
        print("player lives in \(city), \(state)")
    }
}

printLocation(ofPlayer: bobData)
//: Updating values
bobData.updateValue("Bobby", forKey: "name")
bobData["profession"] = "Mailman"
//:Removing pairs
bobData.removeValue(forKey: "state")
bobData["city"] = nil
//: Iterating through dictionaries
for (player, score) in namesAndScores {
    print("\(player) - \(score)")
}

for player in namesAndScores.keys {
    print("\(player),", terminator: "")
}
//:Sets
//:Creating sets
let setOne: Set<Int> = [1]
//:Set literals
let someArray = [1, 2, 3, 1]
let explicitSet: Set<Int> = [1, 2, 3, 1]
var someSet = Set([1, 2, 3, 1])
print(someSet)
//: Accessing elements
print(someSet.contains(1))
print(someSet.contains(4))
//:Adding and removing elements
someSet.insert(5)
print(someSet)
let removeElement = someSet.remove(1)
//print(removeElement)
print(removeElement!)
//:Challenge 1: Which is valid
let array1 = [Int]()
//let array2 = []
let array3: [String] = []
let array4 = [1, 2, 3]
print(array4[0])
//print(array4[5])
array4[1...2]
//array4[0] = 4
//array4.append(4)
var array5 = [1, 2, 3]
array5[0] = array5[1]
array5[0...1] = [4, 5]
print(array5)
//array5[0] = "Six"
//array5 += 6
array5 += [6]
for item in array5 { print(item) }
//:Challenge 2: Remove the first number
func removingOnce(_ item: Int, from array: inout  [Int]) -> [Int] {
    array.removeFirst(item)
    return array
}
removingOnce(2, from: &array5)
//removingOnce(8, from: &array5)

// book Solution

func removingOnce1(_ item: Int, from array: [Int]) -> [Int] {
    var result = array
    if let index = array.firstIndex(of: item) {
        result.remove(at: index)
    }
    return result
}
removingOnce1(3, from: array5)
removingOnce1(8, from: array5)
//:Challenge 3: Remove the numbers
var arr3 = [1, 2, 3, 4, 4, 4]

func removing(_ item: Int, from array: [Int]) -> [Int] {
    var newArray: [Int] = []
    for candidate in array {
        if candidate != item {
            newArray.append(candidate)
        }
    }
    return newArray
}
removing(4, from: arr3)
//:Challenge 4: Reverse an array
func reversed(_ array: [Int]) -> [Int] {
    var reversedArr: [Int] = []
    var index = array.count - 1
        while index >= 0 {
            reversedArr.append(array[index])
            index -= 1
        }
    return reversedArr
}
print(arr3)
print(reversed(arr3))
// book Solution
func reversed1(_ array: [Int]) -> [Int] {
  var newArray: [Int] = []
  for item in array {
    newArray.insert(item, at: 0)
  }
  return newArray
}

reversed1(arr3)

//: Challenge 5: Return the middle
var arrEvven = [1, 2, 3, 4, 5, 6]
var arrOdd = [1, 2, 3, 4, 5, 6, 7]

func middle(_ array: [Int]) -> Int? {
    if array.count % 2 != 0 {
        return array[array.count / 2]
    } else {
        return array[(array.count / 2) - 1]
    }
}

middle(arrEvven)
middle(arrOdd)
// book solution

func middleB(_ array: [Int]) -> Int? {
  guard !array.isEmpty else {
    return nil
  }
  return array[(array.count-1)/2]
}

middleB(arrEvven)
middleB(arrOdd)

//: Challenge 6: Find the minimum and maximum
var arr6 = [1, 2, 3, 4, 5, 6]
var arrEmpty: [Int] = []

func minMax(of numbers: [Int]) -> (min: Int, max: Int)? {
    guard !numbers.isEmpty else {
        return nil
    }
    var result = numbers.sorted()
    return (result[0], result[result.count - 1])
}
minMax(of: arr6)
minMax(of: arrEmpty)

// Book Solution
func minMaxB(of numbers: [Int]) -> (min: Int, max: Int)? {
  if numbers.isEmpty {
    return nil
  }

  var min = numbers[0]
  var max = numbers[0]
  for number in numbers {
    if number < min {
      min = number
    }
    if number > max {
      max = number
    }
  }
  return (min, max)
}
minMaxB(of: arr6)
minMaxB(of: arrEmpty)

//: Challenge 7: Which is valid
//let dict1: [Int, Int] = [:]
//let dict2 = [:]
let dict3: [Int: Int] = [:]
let dict4 = ["One": 1, "Two": 2, "Three": 3]
//dict4[1]
dict4["One"]
//dict4["Zero"] = 0
//dict4[0] = "Zero"
var dict5 = ["NY": "New York", "CA": "California"]
dict5["NY"]
dict5["WA"] = "Washington"
dict5["CA"] = nil
dict5
//: Challenge 8: Long names
func longName(for dictionary: [String: String]) -> [String] {
    var long: [String] = []
    for values in dictionary.values {
        if values.count > 8 {
            long.append(values)
        }
    }
    return long
}
longName(for: dict5)

// Book Solution
func printLongStateNames(in dictionary: [String: String]) {
  for (_, value) in dictionary {
    if value.count > 8 {
      print(value)
    }
  }
}
printLongStateNames(in: dict5)

//:Challenge 9: Merge dictionaries
func merging(_ dict1: [String: String], with dict2: [String:
                                                        String]) -> [String: String] {
    var newDict = dict1
    for (key, value) in dict2 {
        newDict[key] = value
    }
    
    return newDict
}

let dict9 = ["1": "A", "2": "B", "3": "C"]
let dict10 = ["4": "D", "5": "E", "6": "F"]
merging(dict9, with: dict10)

//: Challenge 10: Count the characters
func occurrencesOfCharacters(in text: String) -> [Character:
                                                    Int] {
    var newDic: [Character: Int] = [:]
    for i in text {
        if newDic.contains(where: { $0.key == i }) {
            newDic[i]! += 1
        } else {
            newDic[i] = 1
        }
    }
    return newDic
}

print(occurrencesOfCharacters(in: "AABBBBB"))
print(occurrencesOfCharacters(in: ""))


// Book Solution
func occurrencesOfCharactersB(in text: String) -> [Character: Int] {
  var occurrences: [Character: Int] = [:]
  for character in text {
    if let count = occurrences[character] {
      occurrences[character] = count + 1
    } else {
      occurrences[character] = 1
    }
  }
  return occurrences
}


occurrencesOfCharactersB(in: "AABBBBB")
print(occurrencesOfCharacters(in: ""))

/*
 Bonus: To make your code shorter, dictionaries have a special subscript operator that let you add a default value if it is not found in the dictionary. For example, dictionary["a", default: 0] creates a 0 entry for the character "a" if it is not found instead of returning nil.
*/

func occurrencesOfCharactersBonus(in text: String) -> [Character: Int] {
  var occurrences: [Character: Int] = [:]
  for character in text {
    occurrences[character, default: 0] += 1
  }
  return occurrences
}


//:Challenge 11: Unique values
let dict11 = ["D": 2, "E": 3, "F": 4, "H": 4]
let dict12 = ["D": 2, "E": 3, "F": 4]

func isInvertible(_ dictionary: [String: Int]) -> Bool {
    var seenValues: Set<Int> = []
    for value in dictionary.values {
        if seenValues.contains(value) {
            return false
        }
        seenValues.insert(value)
    }
    return true
}
isInvertible(dict11)
isInvertible(dict12)
//: Challenge 12: Removing keys and setting values to nil
var nameTitleLookup: [String: String?] = ["Mary": "Engineer",
"Patrick": "Intern", "Ray": "Hacker"]
nameTitleLookup.updateValue(nil, forKey: "Patrick")
print(nameTitleLookup)
nameTitleLookup["Ray"] = nil
print(nameTitleLookup)
