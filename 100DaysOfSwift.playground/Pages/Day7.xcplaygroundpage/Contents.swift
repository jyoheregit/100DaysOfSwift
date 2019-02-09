import Foundation

// Day 7
// Closure - Part Two
// Using closures as parameters when they accept parameters – test
// Using closures as parameters when they return values – test
// Shorthand parameter names – test
// Closures with multiple parameters – test
// Returning closures from functions – test
// Capturing values – test

// Using closures as parameters when they accept parameters
// Using closures as parameters when they return values
// Closures with multiple parameters – test


func concatenate(add : (String, String) -> String) -> String {
    return add("Ram","Lakshman")
}

var fullName = concatenate { (firstName: String, lastname: String) -> String in
    let fullName = firstName + " " + lastname
    return fullName
}
print(fullName)

// Shorthand parameter names
fullName = concatenate {$0 + " " + $1} //takes two parameters and returns a string
print(fullName)

// Returning closures from functions

func returnAddFunction() -> (Int, Int) -> Int {
    
    return {
        $0+$1 // used in closure body definition
    }
    
}

let addFunc = returnAddFunction()
print(addFunc(1, 2))

//or long hand syntax

func returnSubtractFunction() -> (Int, Int) -> Int {
    
    return { (firstNum : Int, secondNum: Int) -> Int in
        return firstNum - secondNum
    }
    
}

let subtractFunc = returnSubtractFunction()
print(addFunc(20, 10))

// Capture values

func closureReturn() -> () -> Void {
    var outsideClosureValue = 10
    return  {
        let value = outsideClosureValue + 10
        outsideClosureValue += 1
        print(value)
    }
}

let closureReturned = closureReturn()
closureReturned()
closureReturned() //outsideClosureValue is captured in closureReturn method by the closure
