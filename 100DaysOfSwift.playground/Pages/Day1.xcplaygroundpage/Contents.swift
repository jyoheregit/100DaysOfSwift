
//  Day 1
// Variables, Constants, MultilineString
// Data Types

var variable = "Hello, playground"
variable = "Hello"

let constant = "Hello"

var string : String = "String"
var integer : Int = 10
var float : Float = 10
var double : Double = 10
var character  : Character = "T"
var bool : Bool = true

print(float)
var doubleDefault = 10.0
print (doubleDefault.self)

//Multi line string
var multilineString = """
This is a multiline
String for
example
"""

print(multilineString)

var singleLineString = """
This is a singleline \
String for \
example
"""
print(singleLineString)

//String interpolation
let name = "Joe"
let score = 10

print("\(name), score \(score)")
print("\(name + " Dude"), score \(score * 2)")


var highScore = 3_28_556
highScore = 328_56_6



// You make variables using var and constants using let. It’s preferable to use constants as often as possible.
// Strings start and end with double quotes, but if you want them to run across multiple lines you should use three sets of double quotes.
// Integers hold whole numbers, doubles hold fractional numbers, and booleans hold true or false.
// String interpolation allows you to create strings from other variables and constants, placing their values inside your string.
// Swift uses type inference to assign each variable or constant a type, but you can provide explicit types if you want.








