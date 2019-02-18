import Foundation

// Day 12
// Handling missing data
// Unwrapping optionals
// Unwrapping with guard
// Force unwrapping
// Implicitly unwrapped optionals
// Nil coalescing
// Optional chaining
// Optional try
// Failable initializers
// Typecasting
// Optionals summary

// Handling missing data

var name : String? = nil
var age : Int? = nil

name = "Ram"
age = 35

// Unwrapping optionals

if let unwrappedName = name {
    print(unwrappedName)
} else {
    print("name is nil")
}

// Unwrapping with guard

func greet(name : String?) {
    
    guard let name = name else {
        print("name is nil..so exiting")
        return
    }
    
    print(name)
}

greet(name: "Lakshman")
greet(name: nil)

// Force unwrapping

let string = "5"
let intFive = Int(string)! // will crash if string is not a number

// Implicitly unwrapped optionals

var implicitlyUnrwappedInt: Int! = 5
implicitlyUnrwappedInt.description // will crash if implicitlyUnrwappedInt is nil

// Nil coalescing

var optionalString : String? = nil
var value = optionalString ?? "Default string"

// Optional chaining

struct User {
    var name : String?
    var age : Int?
}

struct OptionalChaining {
    var user : User?
}

var optionalChaining : OptionalChaining? = nil
var username = optionalChaining?.user?.name

optionalChaining = OptionalChaining(user: User(name: "Ram", age: 20))
username = optionalChaining?.user?.name

// Optional try

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool? {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}

do {
    try? checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

// Failable initializers - init?

struct Person {
    var id: String
    
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

var person = Person(id: "10")
person = Person(id: "123456789")

// Typecasting

class Employee {
    var id : String
    
    init(id: String) {
        self.id = id
    }
}

class ContractEmployee : Employee {}
class PermanentEmployee : Employee {}

var employees = [ContractEmployee(id: "C1"), PermanentEmployee(id: "P1"), ContractEmployee(id: "C2")]

//print only contract employees
for employee in employees {
    if let contractEmployee = employee as? ContractEmployee {
        print(contractEmployee.id)
    }
}


// Optionals let us represent the absence of a value in a clear and unambiguous way.
// Swift won’t let us use optionals without unwrapping them, either using if let or using guard let.
// You can force unwrap optionals with an exclamation mark, but if you try to force unwrap nil your code will crash.
// Implicitly unwrapped optionals don’t have the safety checks of regular optionals.
// You can use nil coalescing to unwrap an optional and provide a default value if there was nothing inside.
// Optional chaining lets us write code to manipulate an optional, but if the optional turns out to be empty the code is ignored.
// You can use try? to convert a throwing function into an optional return value, or try! to crash if an error is thrown.
// If you need your initializer to fail when it’s given bad input, use init?() to make a failable initializer.
// You can use typecasting to convert one type of object to another.
