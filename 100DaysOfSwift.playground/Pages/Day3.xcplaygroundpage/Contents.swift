import Foundation

// Day 3
// Arithmetic Operators
// Comparison Operators
// Condtions
// Ternary Operator
// Switch
// Range operator ... and ..<

let firstScore = 10
let secondScore = 6

let total = firstScore + secondScore
let difference = firstScore - secondScore
let product = firstScore * secondScore
let divide = firstScore / secondScore
let remainder = firstScore % secondScore

// Operator overloading

let addNumber = 10 + 6
let addString = "Hello " + "World"

let addition = 10.5 + 10
let anotherAddition = Double(firstScore) + 10.5

// Add Arrays

let firstArray = ["One", "Two"]
let secondArray = ["Three", "Four"]
let totalArray = firstArray + secondArray

// Compound Operators

var score = 95
score -= 5
score += 10

var string = "Hi"
string += " there"

// Comparison Operators

var firstNumber = 20
var secondNumber = 30

firstNumber == secondNumber
firstNumber != secondNumber
firstNumber < secondNumber
firstNumber > secondNumber
firstNumber <= secondNumber
firstNumber >= secondNumber

// Works on string as well

"Taylor" < "Annie"
"Annie" < "Taylor"

// Conditions

if (firstNumber < secondNumber) {
    print("\(firstNumber) is less than \(secondNumber)")
} else if(firstNumber > secondNumber) {
    print("\(firstNumber) is greater than \(secondNumber)")
} else {
    print("\(firstNumber) is equal to \(secondNumber)")
}

let myAge = 30
let yourAge = 40

if (myAge < 50 && yourAge < 50) {
    print("Both Ages are less than 50")
}

if (myAge < 50 || yourAge < 50) {
    print("One age is atleast less than 50")
}

// Ternaray

print(firstNumber < secondNumber ? "First num is lesser " : "First num is greater")
//is equal to
if firstNumber < secondNumber {
    print("First num is lesser ")
} else {
    print("First num is greater")
}

// switch

//string switch
// no need for explicit break
var day = "Tuesday"

switch day {
case "Monday":
    print("Monday")
case "Tuesday":
    print("Tuesday")
default:
    print("Other than Monday or Tuesday")
}

//fallthrough - to fallthrough to the next case and then breaks
day = "Monday"

switch day {
case "Monday":
    print("Monday")
    fallthrough
case "Tuesday":
    print("Fallthrough Tuesday")
case "Wednesday":
    print("Wednesday")
default:
    print("Other than Monday or Tuesday or Wednesday")
}

// Range Operators

let number = 10

switch number {
case 1...5:
    print("Betwen 1 and 5 including 5")
case 5..<10:
    print("Betwen 5 and 10 excluding 10")
case 10:
    print("The number 10")
default:
    print("Other numbers")
}
