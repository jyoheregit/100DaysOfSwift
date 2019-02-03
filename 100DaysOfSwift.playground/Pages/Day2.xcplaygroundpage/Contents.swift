import Foundation

// Day 2
// Array, Set, Tuple, Dictionary
// Enum
// Enum with Associated value
// Enum with Raw Value

//Array - order matters

let employee1 = "Ram"
let employee2 = "Gopal"

var employeeArray = [employee1, employee2]
employeeArray[1] // try to access 2 then out of bounds
employeeArray.append("Varma")

employeeArray.enumerated().forEach { (offset: Int, element: String) -> () in
    print("Enumerating and looping \(element)")
}

//Set - no order , unique

var employeeSet = Set(employeeArray)
employeeSet
employeeSet.enumerated().forEach { (offset, employee) in
    print("Set \(offset):\(employee)")
    employeeSet.insert("RGV") // inserted only once as it is unique
}
employeeSet


// Tuples
// cannot add or remove items
// cannot change the type
// can access by numeric position

var nameAndAgeTuple = ("Ram", 20)
nameAndAgeTuple.0
nameAndAgeTuple.1 = 21

var anotherNameAndAgeTuple = (name: "Ram", age : 20)
anotherNameAndAgeTuple.name = "Updated Ram"
anotherNameAndAgeTuple.age = 21

//Dictionary
var dict = ["Ram": 20, "Gopal" : 21]
dict["Ram"]
dict["Gopal"]
dict["None"]

var newDict = [20 : "Ram", 21 : "Gopal"]
newDict[20]
newDict[21]

//Dictionary - Default value

let favoriteIcecream = ["Paul" : "Vannila", "Ram" : "Choclate"]
favoriteIcecream["Paul"]
favoriteIcecream["Ram"]
favoriteIcecream["None", default : "Unknown"]

//Create Empty Collections

var namesArray  = [String]()
var namesAndAgeDict = [String : Int]()

// or like this below

var names : [String] = []
var namesAndAge : [String : Int] = [:]

// or like this

var namesArrayWithAngleBrackets = Array<String>()
var nameAndAgeDictWithAngleBrackets = Dictionary<String, Int>()

namesArrayWithAngleBrackets.append("Vishnu")

nameAndAgeDictWithAngleBrackets["Ram"] = 32

nameAndAgeDictWithAngleBrackets.keys
nameAndAgeDictWithAngleBrackets.values
//For Set

for (name , age) in nameAndAgeDictWithAngleBrackets {
    print("Name and Age : \(name) and \(age)")
}

var namesSet = Set<String>()

// Enum
// Group of Related values

enum Result {
    case success
    case failure
}

var result = Result.success
result = .failure // no need for Result.

result
result.hashValue
//Associated Values

enum ResultWithAssociatedValue {
    case success(code : Int, details : String)
    case failure(String)
}

var resultWithAssociatedValue : ResultWithAssociatedValue = .success(code: 200, details: "Successful")
resultWithAssociatedValue = .failure("An Error Occurred")

// Raw Value Enum

enum ResultWithRawValue : Int {
    case success = 200
    case failure
}

var resultWithRawValue = ResultWithRawValue.success
resultWithRawValue

resultWithRawValue.hashValue
resultWithRawValue.rawValue

resultWithRawValue = .failure
resultWithRawValue.rawValue

resultWithRawValue = ResultWithRawValue(rawValue: 201) ?? .success
resultWithRawValue
