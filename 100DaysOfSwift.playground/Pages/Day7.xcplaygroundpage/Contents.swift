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
print(subtractFunc(20, 10))

// Capture values

func closureReturn() -> () -> Void {
    var outsideClosureValue = 10
    return  {
        outsideClosureValue = outsideClosureValue + 10
        print("outsideClosureValue \(outsideClosureValue)" )
    }
}

let closureReturned = closureReturn()
closureReturned()
closureReturned() //outsideClosureValue is captured in closureReturn method by the closure



// You can assign closures to variables, then call them later on.
// Closures can accept parameters and return values, like regular functions.
// You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.
// If the last parameter to your function is a closure, you can use trailing closure syntax.
// Swift automatically provides shorthand parameter names like $0 and $1, but not everyone uses them.
// If you use external values inside your closures, they will be captured so the closure can refer to them later.
