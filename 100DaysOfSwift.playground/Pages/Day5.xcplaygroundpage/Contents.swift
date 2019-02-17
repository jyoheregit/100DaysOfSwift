//: [Previous](@previous)
import Foundation

// Day 5
// Writing functions – test
// Accepting parameters – test
// Returning values – test
// Parameter labels – test
// Omitting parameter labels – test
// Default parameters – test
// Variadic functions – test
// Writing throwing functions – test
// Running throwing functions – test
// inout parameters – test

func printHelp(){
    print("Help Info")
}

printHelp()

// Accepting parameters
func square(number : Int) {
    print(number * number)
}

square(number: 5)

// Returning values

func squareReturn(number : Int) -> Int {
    return number * number
}

print(squareReturn(number: 10))

// Parameter labels

func sayHello(to name : String) {
    print("Hello \(name)")
}

sayHello(to: "Ram")

// Omitting parameter labels

func greet(_ name : String) {
    print("Greet \(name)")
}

greet("Ram")

// Default parameters

func add(firsNumber : Int = 10, secondNumber : Int = 10){
    print(firsNumber+secondNumber)
}

add()
add(firsNumber: 20, secondNumber: 30)

// Variadic functions

print("Haters", "gonna", "hate")

func variadicAdd(numbers : Int...) { //...after Data Type
    var total = 0
    for number in numbers {
        total += number
    }
    print(total)
}
variadicAdd(numbers: 1)
variadicAdd(numbers: 2,3,9) // separated by comma, converted into array inside function

// Writing throwing functions

enum PasswordError : Error {
    case obvious(String)
    
    func getErrorString() -> String {
        switch self {
        case .obvious(let string):
            return string
        }
    }
}

func checkPassword(password : String) throws -> String { // throws after parameters
    if password == "password" {
        throw PasswordError.obvious("Password is obvious")
    }
    return "Set successfully"
}

do {
    let message = try checkPassword(password: "password")
    print(message)
}
catch {
    if let passwordError = error as? PasswordError {
        print("Eror is : \(passwordError.getErrorString())")
    }
}

// inout parameters

func double(number : inout Int) { // inout before Data type
    number *= number
}

var numberToDouble = 10 // This cannot be let as it used as inout variable
double(number: &numberToDouble)
numberToDouble



// Functions let us re-use code without repeating ourselves.
// Functions can accept parameters – just tell Swift the type of each parameter.
// Functions can return values, and again you just specify what type will be sent back. Use tuples if you want to return several things.
// You can use different names for parameters externally and internally, or omit the external name entirely.
// Parameters can have default values, which helps you write less code when specific values are common.
// Variadic functions accept zero or more of a specific parameter, and Swift converts the input to an array.
// Functions can throw errors, but you must call them using try and handle errors using catch.
// You can use inout to change variables inside a function, but it’s usually better to return a new value.
