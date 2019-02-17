import Foundation

// Day 4
// Loops
// For loops
// While loops
// Repeat loops
// Exiting loops
// Exiting multiple loops
// Skipping items
// Infinite loops

// For loop
// Instead of this syntax which is not supported in swift
// for (var number =1 ; number <= 5; number++)
for number in 1...5 {
    print(number)
}

let array = ["one", "two"]
for number in array {
    print(number)
}

for _ in 1..<2 {
    print("underscore test")
}

for i in 1...100 {
    if 100 % i == 0 {
        print("100 divides evenly into \(i)")
    } else {
        continue
    }
}

// While
var number = 1

while number < 1 {
    print("while \(number)")
    number += 1
}

var bottles = 10
while bottles > 0 {
    bottles -= 2
    print("\(bottles) green bottles.")
}

let flag = false

while flag {
    print ("flag is true")
}

// checking whether the flag is false
while !flag {
    print ("flag is false...")
    break;
}

// Repeat loop (like do-while)

number = 1

repeat {
    print("repeat while \(number)")
    number += 1
} while number < 1

// Exiting Loops

number = 10
repeat {
    print("break loop number \(number)")
    number -= 1
    if(number == 9) {
        break;
    }
} while number > 0

// Break outer loop in Nested loops

outerLoop : for firstNumber in 1..<3 {
    for secondNumber in 1...5{
        print("\(firstNumber)*\(secondNumber) is \(firstNumber*secondNumber)")
        if firstNumber == 2 {
            break outerLoop
        }
    }
}

// Skipping items - continue

let count = 1...10 //can assign like this for range
for number in count {
    if number%2 == 0{
        continue
    }
    print("Odd number is \(number)")
}

// Infinite Loop

var numberInfiniteLoop = 10

while true {
    print("Infinite Number \(numberInfiniteLoop)")
    numberInfiniteLoop += 1
    if numberInfiniteLoop == 20 {
        print("Reached End")
        break; //without break it will be an infinite loop
    }
}



// Loops let us repeat code until a condition is false.
// The most common loop is for, which assigns each item inside the loop to a temporary constant.
// If you don’t need the temporary constant that for loops give you, use an underscore instead so Swift can skip that work.
// There are while loops, which you provide with an explicit condition to check.
// Although they are similar to while loops, repeat loops always run the body of their loop at least once.
// You can exit a single loop using break, but if you have nested loops you need to use break followed by whatever label you placed before your outer loop.
// You can skip items in a loop using continue.
// Infinite loops don’t end until you ask them to, and are made using while true. Make sure you have a condition somewhere to end your infinite loops!
