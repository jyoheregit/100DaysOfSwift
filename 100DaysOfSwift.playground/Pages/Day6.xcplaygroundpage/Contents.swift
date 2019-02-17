import Foundation

// Day 6
// Closure - Part One
// Creating basic closures – test
// Accepting parameters in a closure – test
// Returning values from a closure – test
// Closures as parameters – test
// Trailing closure syntax – test

// Think of closures like functions which you can pass and be called later.
// cannot have external parameter names as functions
// no need for parameter names while calling closures

// Creating basic closures

let closure = {
    print("This is a closure")
}
closure()

// Accepting parameters in a closure
let closureWithParameter = { (name : String, number : Int) in
    print("Hello \(name), Hi-\(number)")
}

closureWithParameter("Ram", 5) //no need for parameter names

// Returning values from a closure

let add = { (firstNum : Int, secondNum : Int) -> Int in // cannot have external parameter names as functions
        return firstNum + secondNum
}

print(add(5,5))

// Closures as parameters

func closureAsParameter(closure : (Int, Int) -> Int) -> Int {
    
    return closure(15,15)
}

let value = closureAsParameter(closure: add)
print(value)

//or
var anotherValue = closureAsParameter { (firstNum, secondNum) -> Int in
    return firstNum+secondNum
}
print(anotherValue)

//or shorthand
anotherValue = closureAsParameter{ $0 + $1 } //$0 as first parameter, $1 as second parameter
print("shorthand \(anotherValue) ")

let driving = {
    print("I'm driving in my car")
}

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)

// Trailing closure syntax
travel {
    print("Am travelling in bus")
}

