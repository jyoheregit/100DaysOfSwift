import Foundation

// Day 13
// Generics - Part 1 
// Generic Add Function

func addInteger(firstNum : Int, secondNum : Int ) -> Int {
    return firstNum + secondNum
}

addInteger(firstNum: 5, secondNum: 10)

func addDouble(firstNum : Double, secondNum: Double) -> Double {
    return firstNum + secondNum
}

addDouble(firstNum: 15, secondNum: 20)

// Generic Add Function

protocol Addable {
    func add(_ other: Self) -> Self
}

extension Int: Addable {
    func add(_ other: Int) -> Int {
        return self + other
    }
}

extension Double: Addable {
    func add(_ other: Double) -> Double {
        return self + other
    }
}

extension String: Addable {
    func add(_ other: String) -> String {
        return self + other
    }
}

// Generic Add Function

func add<T: Addable>(first: T, second: T) -> T {
    return first.add(second)
}

add(first: 10, second: 15)
add(first: 20.5, second : 30)
add(first: "Hello", second: " World")





